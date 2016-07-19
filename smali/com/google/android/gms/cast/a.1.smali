.class public final Lcom/google/android/gms/cast/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/common/api/a;

.field public static final b:Lcom/google/android/gms/cast/d;

.field private static final c:Lcom/google/android/gms/common/api/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/cast/b;

    invoke-direct {v0}, Lcom/google/android/gms/cast/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/a;->c:Lcom/google/android/gms/common/api/d;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string/jumbo v1, "Cast.API"

    sget-object v2, Lcom/google/android/gms/cast/a;->c:Lcom/google/android/gms/common/api/d;

    sget-object v3, Lcom/google/android/gms/cast/internal/u;->a:Lcom/google/android/gms/common/api/f;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/f;)V

    sput-object v0, Lcom/google/android/gms/cast/a;->a:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/cast/d;

    invoke-direct {v0}, Lcom/google/android/gms/cast/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/d;

    return-void
.end method
