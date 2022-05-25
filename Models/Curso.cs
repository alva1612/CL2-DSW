using System.ComponentModel.DataAnnotations;

namespace Workspace.Models
{
    public class Curso 
    {
        [Display(Name ="Codigo")]public int codCurso { get; set;}
        [Display(Name ="Nombre")]public string nomCurso {get; set;}

    }
}