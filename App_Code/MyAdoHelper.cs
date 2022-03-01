using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

/// <summary>
/// Summary description for MyAdoHelper
/// ������ ��� ������ ���� ������  ���� 
/// SQL SERVER
///  App_Data ���� ����� ����� 
/// </summary>

public class MyAdoHelper
{
    public MyAdoHelper()
    {
        //
        // TODO: Add constructor logic here
        //
    }





    public static SqlConnection ConnectToDb(string fileName)
    {
        string path = HttpContext.Current.Server.MapPath("App_Data/");//����� ��� ���������
        path += fileName;
        //string path = HttpContext.Current.Server.MapPath("App_Data/" + fileName);//���� �� ����� ��� ������� ������ ��� ������ �� ����� ����
        string connString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=" +
                             path +
                             ";Integrated Security=True;User Instance=True";
        SqlConnection conn = new SqlConnection(connString);
        return conn;

    }

    /// <summary>
    /// To Execute update / insert / delete queries
    ///  ������ ����� �� ���� ����� ������ ������ �� ������ �� ����
    /// </summary>

    public static void DoQuery(string fileName, string sql)//������ ����� �� ��� ������ ������� �����/ �����/ �����
    //������ �� ������ �� ���� �����
    {

        SqlConnection conn = ConnectToDb(fileName);
        conn.Open();
        SqlCommand com = new SqlCommand(sql, conn);
        com.ExecuteNonQuery();
        com.Dispose();
        conn.Close();

    }


    /// <summary>
    /// To Execute update / insert / delete queries
    ///  ������ ����� �� ���� ����� ������ ������� �� ���� ������ ������� ������ ������
    /// </summary>
    public static int RowsAffected(string fileName, string sql)//������ ����� ����� ��� ������ ������ �����
    //������ �� ������ �� ���� �����
    {

        SqlConnection conn = ConnectToDb(fileName);
        conn.Open();
        SqlCommand com = new SqlCommand(sql, conn);
        int rowsA = com.ExecuteNonQuery();
        conn.Close();
        return rowsA;
    }

    /// <summary>
    /// ������ ����� �� ���� ����� ������ ��� - ������ ��� �� ���� ���� ���� ����
    /// </summary>
    public static bool IsExist(string fileName, string sql)//������ ����� �� ���� ����� ����� ���� ������� ��� �� ������� ������ ���� ����
    {

        SqlConnection conn = ConnectToDb(fileName);
        conn.Open();
        SqlCommand com = new SqlCommand(sql, conn);
        SqlDataReader data = com.ExecuteReader();
        bool found;
        found = (bool)data.Read();// �� �� ������ ������ ���� ��� ���� ��� - ���� ���� ���� �������
        conn.Close();
        return found;

    }


    public static DataTable ExecuteDataTable(string fileName, string sql)
    {
        SqlConnection conn = ConnectToDb(fileName);
        conn.Open();
        SqlDataAdapter tableAdapter = new SqlDataAdapter(sql, conn);
        DataTable dt = new DataTable();
        tableAdapter.Fill(dt);
        return dt;
    }


    public static void ExecuteNonQuery(string fileName, string sql)
    {
        SqlConnection conn = ConnectToDb(fileName);
        conn.Open();
        SqlCommand command = new SqlCommand(sql, conn);
        command.ExecuteNonQuery();
        conn.Close();
    }

    public static string printDataTable(string fileName, string sql)//������ ����� �� ���� ����� ����� ���� ������� ��� �� ������� ������ ���� ����
    {


        DataTable dt = ExecuteDataTable(fileName, sql);

        string printStr = "<table border='1'>";

        foreach (DataRow row in dt.Rows)
        {
            printStr += "<tr>";
            foreach (object myItemArray in row.ItemArray)
            {
                printStr += "<td>" + myItemArray.ToString() + "</td>";
            }
            printStr += "</tr>";
        }
        printStr += "</table>";

        return printStr;
    }



}


