using System.ComponentModel.DataAnnotations;

namespace Workspace.Models
{
    public class Registro 
    {
        [Display(Name ="Id Vacante")]public int idVacante { get; set;}
        [Display(Name ="Codigo Horario")]public int codHorario {get; set;}
        [Display(Name ="Fecha Registro")]public DateTime fRegistro {get; set;}
        [Display(Name ="Alumno")]public string alumno {get; set;}
        [Display(Name ="Correo")]public string email {get; set;}

    }
}