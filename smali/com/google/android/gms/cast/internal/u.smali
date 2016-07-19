.class public final Lcom/google/android/gms/cast/internal/u;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/common/api/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/api/f;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/internal/u;->a:Lcom/google/android/gms/common/api/f;

    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
