idf_component_register(SRCS "app_main.c"
                            "app_mqtt.c"
                            "../nvs/nvs_kv.c"
                            "../timer_demo/esp_timer_demo.c"
                            "../ATT7053/ATT7053.c"
                            "../smart_config/smartconfig.c"
                        INCLUDE_DIRS "."
                                 "../include"
                      )

