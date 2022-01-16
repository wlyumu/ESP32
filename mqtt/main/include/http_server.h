/**
 * @author wl (1546205823@domain.com)
 * @brief 
 * @version 0.1
 * @date 2021-11-04
 * 
 * @copyright Copyright (c) 2021
 * 
 */




#ifndef __HTTP_SERVER_H
#define __HTTP_SERVER_H
/*http server demo*/
httpd_handle_t start_webserver(void);

/*web server*/
esp_err_t start_web_server(const char *base_path);


#endif /*__HTTP_SERVER_H*/