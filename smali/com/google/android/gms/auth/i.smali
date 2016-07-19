.class final Lcom/google/android/gms/auth/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/l;


# instance fields
.field private synthetic a:Landroid/accounts/Account;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/i;->a:Landroid/accounts/Account;

    iput-object p2, p0, Lcom/google/android/gms/auth/i;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/i;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 0
    .line 1000
    invoke-static {p1}, Lcom/google/android/gms/b/z;->a(Landroid/os/IBinder;)Lcom/google/android/gms/b/y;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/i;->a:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/gms/auth/i;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/auth/i;->c:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/b/y;->a(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v1, "tokenDetails"

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/TokenData;->a(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/android/gms/auth/TokenData;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "Error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userRecoveryIntent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1}, Lcom/google/android/gms/auth/a/a/a;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/a/a/a;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/auth/a/a/a;->a(Lcom/google/android/gms/auth/a/a/a;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Lcom/google/android/gms/auth/d;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/auth/d;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    throw v2

    :cond_1
    invoke-static {v2}, Lcom/google/android/gms/auth/a/a/a;->b(Lcom/google/android/gms/auth/a/a/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/google/android/gms/auth/a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method
