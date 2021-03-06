﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FluentJson;
using FluentJson.Configuration;

namespace XIMALAYA.PCDesktop.Core.Data.Decorator
{
    /// <summary>
    /// result基类
    /// </summary>
    public abstract class ResultBase
    {
        public abstract void doAddConfig();
    }
    /// <summary>
    /// 被装饰类基类
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public class Result<T> : ResultBase
    {
        public JsonConfiguration<T> JsonConfiguration { get; set; }

        public Result()
        {
            this.JsonConfiguration = Json.ConfigurationFor<T>();
        }

        public override void doAddConfig() { }
    }
    /// <summary>
    /// 装饰类基类
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public abstract class Decorator<T> : Result<T>
    {
        private Result<T> Result;

        public Decorator(Result<T> result)
        {
            this.Result = result;
        }

        public override void doAddConfig() { }
    }
}
