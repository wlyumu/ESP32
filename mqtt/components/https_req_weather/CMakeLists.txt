# Embed the server root certificate into the final binary
#
# (If this was a component, we would set COMPONENT_EMBED_TXTFILES here.)
idf_component_register(SRCS "https_request.c"
                    INCLUDE_DIRS "."
                    REQUIRES  nvs_flash esp-tls protocol_examples_common
                    EMBED_TXTFILES server_root_cert.pem)
