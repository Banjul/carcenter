package com.carcenter.dao;

import com.carcenter.model.News;

import java.util.List;
/**
 * Created by joy12 on 2017/12/3.
 */
public interface NewsDao{
    void save( News news);
    List<News> getAllNews();
    List<News> getNewsByTitle(String title);
}
