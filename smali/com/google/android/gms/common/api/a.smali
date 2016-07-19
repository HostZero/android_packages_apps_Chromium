.class public final Lcom/google/android/gms/common/api/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/d;

.field private final b:Landroid/support/v7/app/z;

.field private final c:Lcom/google/android/gms/common/api/f;

.field private final d:Landroid/support/customtabs/a;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/f;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "Cannot construct an Api with a null ClientBuilder"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Cannot construct an Api with a null ClientKey"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/a;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/api/a;->a:Lcom/google/android/gms/common/api/d;

    iput-object v1, p0, Lcom/google/android/gms/common/api/a;->b:Landroid/support/v7/app/z;

    iput-object p3, p0, Lcom/google/android/gms/common/api/a;->c:Lcom/google/android/gms/common/api/f;

    iput-object v1, p0, Lcom/google/android/gms/common/api/a;->d:Landroid/support/customtabs/a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/common/api/d;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->a:Lcom/google/android/gms/common/api/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/a/j;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->a:Lcom/google/android/gms/common/api/d;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/google/android/gms/common/api/f;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->c:Lcom/google/android/gms/common/api/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "This API was constructed with a SimpleClientKey. Use getSimpleClientKey"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/a/j;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->c:Lcom/google/android/gms/common/api/f;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->e:Ljava/lang/String;

    return-object v0
.end method
