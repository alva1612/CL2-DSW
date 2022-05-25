using System.ComponentModel.DataAnnotations;

namespace Workspace.Models
{
    public class Horario 
    {
        [Display(Name ="Codigo Horario")]public int codHorario { get; set;}
        [Display(Name ="Codigo Curso")]public int codCurso {get; set;}
        [Display(Name ="Fecha Inicio")]public DateTime fecInicio {get; set;}
        [Display(Name ="Fecha Termino")]public DateTime fecTermino {get; set;}
        [Display(Name ="Vacantes")]public int vacantes {get; set;}

    }
}