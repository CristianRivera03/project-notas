using System;
using System.Data;
using Datos;

namespace Negocio
{
    public class NCategorias
    {
        private Categorias objCategorias = new Categorias();

        public DataTable GetCategorias()
        {
            try
            {
                return objCategorias.Get();
            }
            catch (Exception ex)
            {
                throw new Exception("Error al obtener las categorías desde la capa de negocio", ex);
            }
        }

        public void InsertCategoria(string nombre)
        {
            try
            {
                objCategorias.Insert(nombre);
            }
            catch (Exception ex)
            {
                throw new Exception("Error al insertar la categoría desde la capa de negocio", ex);
            }
        }

        public void UpdateCategoria(int id, string nombre)
        {
            try
            {
                objCategorias.Update(id, nombre);
            }
            catch (Exception ex)
            {
                throw new Exception("Error al actualizar la categoría desde la capa de negocio", ex);
            }
        }

        public void DeleteCategoria(int id)
        {
            try
            {
                objCategorias.Delete(id);
            }
            catch (Exception ex)
            {
                throw new Exception("Error al eliminar la categoría desde la capa de negocio", ex);
            }
        }
    }
}
