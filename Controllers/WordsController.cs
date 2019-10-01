using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace WordApi.Controllers
{
  [Route("api/[controller]")]
  [ApiController]
  public class WordsController : ControllerBase
  {
    [HttpGet]
    public ActionResult GetWords()
    {
      return Ok(new { words = WordList.Words });
    }
    [HttpGet("random")]
    public ActionResult GetRandomWord()
    {
      return Ok(new { word = WordList.Words[new Random().Next(0, WordList.Words.Count)] });
    }
  }
}