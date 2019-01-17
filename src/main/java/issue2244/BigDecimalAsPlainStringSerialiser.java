import java.math.BigDecimal;
import java.lang.reflect.Type;
import com.google.gson.*;

public class BigDecimalAsPlainStringSerialiser implements JsonSerializer<BigDecimal>
{
    @Override
    public JsonElement serialize(final BigDecimal toSerialise, final Type typeOfSrc, final JsonSerializationContext context)
    {
        return new JsonPrimitive(toSerialise.toPlainString());
    }
}
