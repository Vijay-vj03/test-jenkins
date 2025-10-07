#use official nginx image
FROM nginx:alpine

#copy your website files into nginx defailt public directory
COPY . /usr/share/nginx/html

#expose port 80 for http traffic
EXPOSE 80

#automatically start nginx
CMD ["nginx", "-g", "daemon off;"]
