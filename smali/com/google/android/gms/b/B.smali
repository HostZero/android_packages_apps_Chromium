.class public final Lcom/google/android/gms/b/B;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/common/api/d;

.field public static final b:Lcom/google/android/gms/common/api/a;

.field private static c:Lcom/google/android/gms/common/api/f;

.field private static d:Lcom/google/android/gms/common/api/f;

.field private static e:Lcom/google/android/gms/common/api/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/f;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/b/B;->c:Lcom/google/android/gms/common/api/f;

    new-instance v0, Lcom/google/android/gms/common/api/f;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/b/B;->d:Lcom/google/android/gms/common/api/f;

    new-instance v0, Lcom/google/android/gms/b/C;

    invoke-direct {v0}, Lcom/google/android/gms/b/C;-><init>()V

    sput-object v0, Lcom/google/android/gms/b/B;->a:Lcom/google/android/gms/common/api/d;

    new-instance v0, Lcom/google/android/gms/b/D;

    invoke-direct {v0}, Lcom/google/android/gms/b/D;-><init>()V

    sput-object v0, Lcom/google/android/gms/b/B;->e:Lcom/google/android/gms/common/api/d;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string/jumbo v1, "profile"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string/jumbo v1, "email"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string/jumbo v1, "SignIn.API"

    sget-object v2, Lcom/google/android/gms/b/B;->a:Lcom/google/android/gms/common/api/d;

    sget-object v3, Lcom/google/android/gms/b/B;->c:Lcom/google/android/gms/common/api/f;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/f;)V

    sput-object v0, Lcom/google/android/gms/b/B;->b:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string/jumbo v1, "SignIn.INTERNAL_API"

    sget-object v2, Lcom/google/android/gms/b/B;->e:Lcom/google/android/gms/common/api/d;

    sget-object v3, Lcom/google/android/gms/b/B;->d:Lcom/google/android/gms/common/api/f;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/f;)V

    new-instance v0, Lcom/google/android/gms/b/E;

    invoke-direct {v0}, Lcom/google/android/gms/b/E;-><init>()V

    return-void
.end method
