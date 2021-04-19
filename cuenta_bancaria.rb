class CuentaBancarias 
    attr_accessor :nombre_usuario, :cuenta, :vip

    def initialize (nombre_usuario,cuenta,vip=0)
        count=0

        if cuenta.digits.count == 8
            @nombre_usuario = nombre_usuario
            @cuenta= cuenta
            @vip=vip
            puts"\n user_create: #{nombre_usuario}" 
            puts" count:  #{cuenta}" 
            puts" status: #{vip} "
        else
            raise RangeError,'no es un argumento valido, ingrese un numero de 8 digitos'
        end
    end

    def num_cuenta(cuenta)

        if cuenta.vip == 1
    
            print "#{cuenta.vip}-#{cuenta.cuenta} usuario vip \n"
        else
            print "#{cuenta.vip}-#{cuenta.cuenta} usuario normal \n"
        end

    end
end

cuenta1 = CuentaBancarias.new('usuario1', 12345678, 1)
print cuenta1.num_cuenta(cuenta1)

cuenta2 = CuentaBancarias.new('usuario1', 12345999 )
print cuenta2.num_cuenta(cuenta2)

#cuenta3 = CuentaBancarias.new('usuario1', 1234, 1)
#print cuenta3.num_cuenta(cuenta3)
# dejo comentado este , ya que arroja un error argumental
