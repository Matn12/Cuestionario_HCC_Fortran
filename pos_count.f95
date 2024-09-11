function pos_count(V,n)
    !Esta funcion cuenta la cantidad de valores positivos de un vector
    !V es el vector de entrada de dimension n
    implicit none
    integer:: pos_count                             !Cantidad de elementos positivos del vector
    integer, intent(in) :: n                
    real, intent(in) :: V(n)   
    integer :: j                                !Una herramienta misteriosa que nos va a servir
                                                !más tarde (es pa iterar el do)

    pos_count = 0

    do j = 1,n 
        if (V(j)>0.0) then
            pos_count = pos_count + 1 
        end if
    end do

end function pos_count