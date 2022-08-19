class Ponto

attr_accessor :latitude, :longitude

  def initialize(latitude, longitude)
    @latitude = latitude
    @longitude = longitude
  end

  def calcula_distancia(ponto_b)
    # ponto inicial
    long_inicial= self.longitude
    lat_inicial = self.latitude
    # ponto final
    long_final = ponto_b.longitude
    lat_final = ponto_b.latitude

     #  raio da Terra
     r = 6373.00000;

     # converte para Radianos
     lon1 = radians(long_inicial);
     lat1 = radians(lat_inicial);

     # converte para Radianos
     lon2 = radians(long_final);
     lat2 = radians(lat_final);

     # diferença entre os pontos
     dlon = lon2 - lon1;
     dlat = lat2 - lat1;


     a = (Math.sin(dlat / 2)**2) + (Math.cos(lat1)) * (Math.cos(lat2)) * (Math.sin(dlon / 2)**2);
     c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));

    # resultado levando em consideração o raio da terra
    return r * c;
  end

  def radians(valor)
      pi = 3.14159;
      return pi * valor/180;
  end


end
