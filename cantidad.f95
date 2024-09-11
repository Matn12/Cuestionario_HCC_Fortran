PROGRAM cantidad
    ! ------------------------------------------------------------------
    ! Declaración de tipos
    ! ------------------------------------------------------------------
    IMPLICIT none
    INTEGER :: i ! número de términos a sumar
    INTEGER :: Nmax = 10000 !numero maximo de datos
    INTEGER :: Suma
    REAL,allocatable :: vec(:)
    ! ------------------------------------------------------------------
    ! Interface
    ! ------------------------------------------------------------------
    interface 
        function pos_count(V,n)
            integer:: pos_count                 
            integer, intent(in) :: n
            real, intent(in) :: V(n)
        end function pos_count
    endinterface 

    ! ------------------------------------------------------------------
    ! Bloque de procesamiento
    ! ------------------------------------------------------------------
    ALLOCATE(vec(Nmax))
    OPEN(1,file='data1.dat')
    DO i=1,Nmax
        READ(1,'(f10.5)')vec(i)
    ENDDO
    CLOSE(1)
    !------------------------------------
    !En esta linea, llamar a la función
    Suma= pos_count(vec,Nmax)
    !------------------------------------
    WRITE(*,*)Suma
    
    deallocate(Vec)
    
    ! ------------------------------------------------------------------


    END PROGRAM cantidad