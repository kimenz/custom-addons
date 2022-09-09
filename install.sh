#/bin/bash

#INSTALA A DESGRACA DAS DEPENDENCIAS
apt-get install -y git python3 nano virtualenv xz-utils \
    wget fontconfig libfreetype6 libx11-6 libxext6 libxrender1 xfonts-75dpi gitg libpq-dev gcc build-essential python3-dev libxslt1-dev libldap2-dev libsasl2-dev \
    libzip-dev libssl-dev libxml2-dev swig pkg-config libxmlsec1-dev libxml2-dev libxmlsec1-openssl libffi-dev node-less

#CLONA TUDO
git submodule update --init --recursive

#ATUALIZA O PIP
pip3 install --upgrade pip

#A DESGRACA DOS PACOTES PIPS
cd /usr/lib/python3/dist-packages/odoo/addons
pip3 install -r requirements.txt
cd ..
cd /usr/lib/python3/dist-packages/odoo/custom-addons/account-invoicing
pip3 install -r requirements.txt
cd ..
cd /usr/lib/python3/dist-packages/odoo/custom-addons/account-payment
pip3 install -r requirements.txt
cd ..
cd /usr/lib/python3/dist-packages/odoo/custom-addons/account-invoice-reporting
pip3 install -r requirements.txt
cd ..
cd /usr/lib/python3/dist-packages/odoo/custom-addons/calendar
pip3 install -r requirements.txt
cd ..
cd /usr/lib/python3/dist-packages/odoo/custom-addons/contract
pip3 install -r requirements.txt
cd ..
cd /usr/lib/python3/dist-packages/odoo/custom-addons/maintenance
pip3 install -r requirements.txt
cd ..
cd /usr/lib/python3/dist-packages/odoo/custom-addons/helpdesk
pip3 install -r requirements.txt
cd ..
cd /usr/lib/python3/dist-packages/odoo/custom-addons/l10n-brazil
pip3 install -r requirements.txt
cd ..
cd /usr/lib/python3/dist-packages/odoo/custom-addons/field-service
pip3 install -r requirements.txt
cd ..
cd /usr/lib/python3/dist-packages/odoo/custom-addons/timesheet
pip3 install -r requirements.txt
cd ..
cd /usr/lib/python3/dist-packages/odoo/custom-addons/geospatial
pip3 install -r requirements.txt
cd ..
cd /usr/lib/python3/dist-packages/odoo/custom-addons/server-tools
pip3 install -r requirements.txt
cd ..
cd /usr/lib/python3/dist-packages/odoo/custom-addons/project
pip3 install -r requirements.txt
cd ..
cd /usr/lib/python3/dist-packages/odoo/custom-addons/partner-contact
pip3 install -r requirements.txt
cd ..
cd /usr/lib/python3/dist-packages/odoo/custom-addons/web
pip3 install -r requirements.txt
cd ..
cd /usr/lib/python3/dist-packages/odoo/custom-addons/manufacture
pip3 install -r requirements.txt
cd ..
cd /usr/lib/python3/dist-packages/odoo/custom-addons/website
pip3 install -r requirements.txt
cd ..
cd /usr/lib/python3/dist-packages/odoo/custom-addons/product-attribute
pip3 install -r requirements.txt
cd ..
cd /usr/lib/python3/dist-packages/odoo/custom-addons/stock-logistics-workflow
pip3 install -r requirements.txt
cd ..
cd /usr/lib/python3/dist-packages/odoo/custom-addons/stock-logistics-barcode
pip3 install -r requirements.txt
cd ..
cd /usr/lib/python3/dist-packages/odoo/custom-addons/stock-logistics-warehouse
pip3 install -r requirements.txt
cd ..
cd /usr/lib/python3/dist-packages/odoo/custom-addons/social
pip3 install -r requirements.txt
cd ..
cd /usr/lib/python3/dist-packages/odoo/custom-addons/server-ux
pip3 install -r requirements.txt
cd ..

odoo -d kimenz-prod -i account,account_due_list,account_edi,account_edi_facturx,account_edi_ubl,account_edi_ubl_cii,agreement,agreement_legal,agreement_maintenance,agreement_serviceprofile,analytic,auth_signup,auth_totp,auth_totp_portal,barcodes,base,base_address_city,base_address_extended,base_geolocalize,base_import,base_maintenance,base_maintenance_config,base_maintenance_group,base_setup,base_territory,bus,calendar,calendar_sms,contacts,contract,contract_sale,crm,crm_iap_lead,crm_iap_lead_enrich,crm_sms,digest,fetchmail,fieldservice,fieldservice_account,fieldservice_account_analytic,fieldservice_activity,fieldservice_agreement,fieldservice_calendar,fieldservice_equipment_stock,fieldservice_maintenance,fieldservice_partner_multi_relation,fieldservice_project,fieldservice_recurring,fieldservice_repair,fieldservice_skill,fieldservice_stock,fieldservice_timeline,fieldservice_vehicle,fieldservice_vehicle_stock,google_recaptcha,helpdesk_mgmt,helpdesk_mgmt_fieldservice,helpdesk_mgmt_project,helpdesk_mgmt_rating,helpdesk_mgmt_sla,helpdesk_mgmt_timesheet,helpdesk_motive,helpdesk_type,hr,hr_maintenance,hr_org_chart,hr_skills,hr_timesheet,hr_timesheet_task_domain,hr_timesheet_task_stage,http_routing,iap,iap_crm,iap_mail,l10n_br_account,l10n_br_account_due_list,l10n_br_base,l10n_br_coa,l10n_br_coa_simple,l10n_br_contract,l10n_br_crm,l10n_br_fiscal,l10n_br_hr,l10n_br_nfe,l10n_br_nfe_spec,l10n_br_nfse,l10n_br_portal,l10n_br_purchase,l10n_br_sale,l10n_br_stock,l10n_br_stock_account,l10n_br_website_sale,l10n_br_zip,mail,mail_bot,mail_bot_hr,maintenance,maintenance_account,maintenance_equipment_contract,maintenance_equipment_hierarchy,maintenance_equipment_image,maintenance_equipment_scrap,maintenance_equipment_sequence,maintenance_equipment_status,maintenance_equipment_tags,maintenance_plan,maintenance_plan_activity,maintenance_product,partner_autocomplete,partner_multi_relation,payment,payment_fix_register_token,payment_transfer,phone_validation,portal,portal_rating,procurement_jit,product,product_matrix,project,project_timesheet_time_control,purchase,purchase_stock,rating,repair,resource,sale,sale_crm,sale_management,sale_product_configurator,sale_product_matrix,sale_project,sale_purchase,sale_purchase_stock,sale_stock,sale_timesheet,sale_timesheet_edit,sale_timesheet_purchase,sales_team,sms,snailmail,snailmail_account,social_media,spec_driven_model,stock,stock_account,stock_picking_invoice_link,stock_picking_invoicing,stock_putaway_method,stock_sms,uom,utm,web,web_editor,web_ir_actions_act_multi,web_ir_actions_act_view_reload,web_kanban_gauge,web_pwa_oca,web_responsive,web_timeline,web_tour,web_unsplash,website,website_crm,website_crm_sms,website_form,website_form_project,website_mail,website_menu_by_user_status,website_odoo_debranding,website_payment,website_sale,website_sale_management,website_sale_product_configurator,website_sale_stock,website_sale_stock_product_configurator,website_sms
 --without-demo=true --data-dir=/var/lib/odoo/.local/share/Odoo --stop-after-init --addons-path="/usr/lib/python3/dist-packages/odoo/addons,/usr/lib/python3/dist-packages/odoo/custom-addons/account-invoicing,/usr/lib/python3/dist-packages/odoo/custom-addons/account-payment,/usr/lib/python3/dist-packages/odoo/custom-addons/account-invoice-reporting,/usr/lib/python3/dist-packages/odoo/custom-addons/calendar,/usr/lib/python3/dist-packages/odoo/custom-addons/contract,/usr/lib/python3/dist-packages/odoo/custom-addons/maintenance,/usr/lib/python3/dist-packages/odoo/custom-addons/helpdesk,/usr/lib/python3/dist-packages/odoo/custom-addons/l10n-brazil,/usr/lib/python3/dist-packages/odoo/custom-addons/field-service,/usr/lib/python3/dist-packages/odoo/custom-addons/timesheet,/usr/lib/python3/dist-packages/odoo/custom-addons/geospatial,/usr/lib/python3/dist-packages/odoo/custom-addons/server-tools,/usr/lib/python3/dist-packages/odoo/custom-addons/project,/usr/lib/python3/dist-packages/odoo/custom-addons/partner-contact,/usr/lib/python3/dist-packages/odoo/custom-addons/web,/usr/lib/python3/dist-packages/odoo/custom-addons/manufacture,/usr/lib/python3/dist-packages/odoo/custom-addons/website,/usr/lib/python3/dist-packages/odoo/custom-addons/product-attribute,/usr/lib/python3/dist-packages/odoo/custom-addons/stock-logistics-workflow,/usr/lib/python3/dist-packages/odoo/custom-addons/stock-logistics-barcode,/usr/lib/python3/dist-packages/odoo/custom-addons/stock-logistics-warehouse,/usr/lib/python3/dist-packages/odoo/custom-addons/social,/usr/lib/python3/dist-packages/odoo/custom-addons/server-ux"
