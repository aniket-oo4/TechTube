package com.tube;

public class VideoData {
    public String video_image,video_title,video_category,video_file,video_description;
    public  String channel_name , channel_logo;

//    int views;

    public VideoData(String video_file,String video_image, String video_title,String video_category,String video_description, String channel_name, String channel_logo) {
        this.video_file=video_file;
        this.video_image = video_image;
        this.video_title = video_title;
        this.channel_name = channel_name;
        this.channel_logo = channel_logo;
        this.video_category=video_category;
        this.video_description=video_description;

    }

    public String getVideo_description() {
        return video_description;
    }

    public String getVideo_file() {
        return video_file;
    }

    public String getVideo_category() {
        return video_category;
    }

    public String getVideo_image() {
        return video_image;
    }

    public String getVideo_title() {
        return video_title;
    }

    public String getChannel_name() {
        return channel_name;
    }

    public String getChannel_logo() {
        return channel_logo;
    }
}
