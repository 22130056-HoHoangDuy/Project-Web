package vn.edu.hcmuaf.fit.baocaomonhoc.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.CategoryDao;
import vn.edu.hcmuaf.fit.baocaomonhoc.dao.model.Categories;

import java.io.IOException;
import java.util.List;

@WebFilter(value = "/*")
public class MenuFilter extends HttpFilter {

    @Override
    protected void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain) throws IOException, ServletException {
        CategoryDao categoryDao = new CategoryDao();

        List<Categories> list = categoryDao.getAll();

        req.setAttribute("listCate", list);
        chain.doFilter(req, res);
    }
}