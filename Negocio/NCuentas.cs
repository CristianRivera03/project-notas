using System;
using System.Data;
using Datos;

namespace Negocio
{
    public class NCuentas
    {
        private Cuentas objCuentas = new Cuentas();

        public DataTable GetCuentas()
        {
            try
            {
                return objCuentas.Get();
            }
            catch (Exception ex)
            {
                throw new Exception("Error al obtener las cuentas desde la capa de negocio", ex);
            }
        }

        public void InsertCuenta(string nombre, string usuario, string password, int idCategoria)
        {
            try
            {
                objCuentas.Insert(nombre, usuario, password, idCategoria);
            }
            catch (Exception ex)
            {
                throw new Exception("Error al insertar la cuenta desde la capa de negocio", ex);
            }
        }

        public void UpdateCuenta(int id, string nombre, string usuario, string password, int idCategoria)
        {
            try
            {
                objCuentas.Update(id, nombre, usuario, password, idCategoria);
            }
            catch (Exception ex)
            {
                throw new Exception("Error al actualizar la cuenta desde la capa de negocio", ex);
            }
        }

        public void DeleteCuenta(int id)
        {
            try
            {
                objCuentas.Delete(id);
            }
            catch (Exception ex)
            {
                throw new Exception("Error al eliminar la cuenta desde la capa de negocio", ex);
            }
        }
    }
}
