class AdminGenerator < Rails::Generators::NamedBase
  desc "Créé une resource ActiveAdmin au standard"
  def create_resource_file
    say "Voir le Standard : https://captive.notion.site/ActiveAdmin-Personnaliser-l-index-e7869c1bd6064e94a623eb7950d1ca8c?pvs=4",
        :blue
    cree_resource
    cree_show
    cree_form
  end

  private

  def cree_resource
    create_file "app/admin/#{plural_name}.rb", <<~RUBY
    # frozen_string_literal: true

    ActiveAdmin.register #{class_name} do
      config.sort_order = "created_at_desc"

      permit_params #{permit_params.map { |p| ":#{p}" }.join(", ")}
    #{includes}
      index do
        #{index_columns.map { |attr| "column :#{attr}" }.join("\n    ")}
        actions dropdown: true
      end

      show do
        render partial: "admin/#{plural_name}/show", locals: { resource: resource }
      end

      form partial: "admin/#{plural_name}/form"
    end
    RUBY
  end

  def cree_show
    create_file "app/views/admin/#{plural_name}/_show.html.arb", <<~RUBY
# frozen_string_literal: true

panel "Détails #{plural_name}" do
  attributes_table_for resource do
    #{show_rows.map { |attr| "row :#{attr}" }.join("\n    ")}
  end
end
    RUBY
  end

  def cree_form
    create_file "app/views/admin/#{plural_name}/_form.html.arb", <<~RUBY
# frozen_string_literal: true

active_admin_form_for [:admin, resource] do |f|
  f.semantic_errors
  f.inputs do
    #{form_inputs.map { |p| "f.input :#{p}" }.join("\n    ")}
  end
  f.actions
end
        RUBY
  end

  def columns
    @columns ||=
      class_name.constantize
        .columns
        .map(&:name)
  end

  def columns_with_associations
    @columns_with_associations ||=
      columns.map do |c|
        association =
          class_name.constantize.reflect_on_all_associations.find do |a|
            a.association_foreign_key == c
          end

        next c if association.blank?

        association.name.to_s
      end
  end

  def associations
    @associations ||=
      columns.map do |c|
        association =
          class_name.constantize.reflect_on_all_associations.find do |a|
            a.association_foreign_key == c
          end&.name
      end.compact
  end

  def includes
    return if associations.blank?

    "\n  includes :#{associations.join(', ')}\n"
  end

  PERMIT_PARAMS_EXCLUDED = [
    "id",
    "created_at",
    "updated_at",
    "encrypted_password",
    "reset_password_token",
    "reset_password_sent_at",
    "remember_created_at",
  ].freeze
  def permit_params
    permit_params = columns.excluding(PERMIT_PARAMS_EXCLUDED)
    if columns.include?("encrypted_password")
      permit_params << "password"
      permit_params << "password_confirmation"
    end
    permit_params
  end

  INDEX_EXCLUDED = PERMIT_PARAMS_EXCLUDED
  def index_columns
    columns_with_associations.excluding(INDEX_EXCLUDED)
  end

  SHOW_EXCLUDED = ["encrypted_password"].freeze
  def show_rows
    columns_with_associations.excluding(SHOW_EXCLUDED)
  end

  INPUT_EXCLUDED = INDEX_EXCLUDED
  def form_inputs
    columns_with_associations.excluding(INPUT_EXCLUDED)
  end
end
