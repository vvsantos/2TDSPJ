create or replace PROCEDURE atualizar_salario_com_aumento(p_employee_id        employees.employee_id%TYPE,
                                                          p_percentual_aumento NUMBER) AS
BEGIN
  UPDATE employees
     SET salary = salary * (1 + (p_percentual_aumento / 100))
   WHERE employee_id = p_employee_id;
  COMMIT;
END;
