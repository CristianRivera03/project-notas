using System;
using System.Data;
using Datos;

namespace Negocio
{
    public class NNotas
    {
        private Notas objNotas = new Notas();

        public DataTable GetNotas()
        {
            try
            {
                return objNotas.Get();
            }
            catch (Exception ex)
            {
                throw new Exception("Error al obtener las notas desde la capa de negocio", ex);
            }
        }

        public void InsertNota(string titulo, string descripcion, DateTime fecha, DateTime hora)
        {
            try
            {
                objNotas.Insert(titulo, descripcion, fecha, hora);
            }
            catch (Exception ex)
            {
                throw new Exception("Error al insertar la nota desde la capa de negocio", ex);
            }
        }

        public void DeleteNota(int id)
        {
            try
            {
                objNotas.Delete(id);
            }
            catch (Exception ex)
            {
                throw new Exception("Error al eliminar la nota desde la capa de negocio", ex);
            }
        }
    }
}
