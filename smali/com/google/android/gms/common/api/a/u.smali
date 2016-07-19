.class public final Lcom/google/android/gms/common/api/a/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a/N;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/a/O;

.field private final b:Ljava/util/concurrent/locks/Lock;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/common/j;

.field private e:Lcom/google/android/gms/common/ConnectionResult;

.field private f:I

.field private g:I

.field private h:I

.field private final i:Landroid/os/Bundle;

.field private final j:Ljava/util/Set;

.field private k:Lcom/google/android/gms/b/F;

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Lcom/google/android/gms/common/internal/a;

.field private p:Z

.field private q:Z

.field private final r:Lcom/google/android/gms/common/internal/G;

.field private final s:Ljava/util/Map;

.field private final t:Lcom/google/android/gms/common/api/d;

.field private u:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/a/O;Lcom/google/android/gms/common/internal/G;Ljava/util/Map;Lcom/google/android/gms/common/j;Lcom/google/android/gms/common/api/d;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/api/a/u;->g:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a/u;->i:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a/u;->j:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a/u;->u:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/gms/common/api/a/u;->a:Lcom/google/android/gms/common/api/a/O;

    iput-object p2, p0, Lcom/google/android/gms/common/api/a/u;->r:Lcom/google/android/gms/common/internal/G;

    iput-object p3, p0, Lcom/google/android/gms/common/api/a/u;->s:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/common/api/a/u;->d:Lcom/google/android/gms/common/j;

    iput-object p5, p0, Lcom/google/android/gms/common/api/a/u;->t:Lcom/google/android/gms/common/api/d;

    iput-object p6, p0, Lcom/google/android/gms/common/api/a/u;->b:Ljava/util/concurrent/locks/Lock;

    iput-object p7, p0, Lcom/google/android/gms/common/api/a/u;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/a/u;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/a/u;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/a/u;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/a/u;Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/a/u;->b(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/a/u;Lcom/google/android/gms/signin/internal/SignInResponse;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a/u;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/SignInResponse;->a()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/SignInResponse;->b()Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->b()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v0, "GoogleApiClientConnecting"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Sign-in succeeded with resolve account failure: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v1}, Lcom/google/android/gms/common/api/a/u;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/common/api/a/u;->n:Z

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->a()Lcom/google/android/gms/common/internal/a;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/common/api/a/u;->o:Lcom/google/android/gms/common/internal/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->c()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/common/api/a/u;->p:Z

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/a/u;->q:Z

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a/u;->e()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a/u;->a(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a/u;->g()V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a/u;->e()V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a/u;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->k:Lcom/google/android/gms/b/F;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->k:Lcom/google/android/gms/b/F;

    invoke-interface {v0}, Lcom/google/android/gms/b/F;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->k:Lcom/google/android/gms/b/F;

    invoke-interface {v0}, Lcom/google/android/gms/b/F;->a()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->k:Lcom/google/android/gms/b/F;

    invoke-interface {v0}, Lcom/google/android/gms/b/F;->a_()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/a/u;->o:Lcom/google/android/gms/common/internal/a;

    :cond_1
    return-void
.end method

.method private a(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/common/api/a/u;->l:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/common/api/a/u;->l:I

    if-ne v1, v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/a/u;)Lcom/google/android/gms/common/j;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->d:Lcom/google/android/gms/common/j;

    return-object v0
.end method

.method private b(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a/u;->h()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a/u;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->a:Lcom/google/android/gms/common/api/a/O;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/a/O;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->a:Lcom/google/android/gms/common/api/a/O;

    iget-object v0, v0, Lcom/google/android/gms/common/api/a/O;->e:Lcom/google/android/gms/common/api/a/c;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/a/c;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;I)V
    .locals 5

    const v4, 0x7fffffff

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x2

    if-eq p3, v2, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/a;->a()Lcom/google/android/gms/common/api/d;

    if-ne p3, v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    :goto_0
    if-eqz v2, :cond_5

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/common/api/a/u;->e:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/google/android/gms/common/api/a/u;->f:I

    if-ge v4, v2, :cond_5

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/google/android/gms/common/api/a/u;->e:Lcom/google/android/gms/common/ConnectionResult;

    iput v4, p0, Lcom/google/android/gms/common/api/a/u;->f:I

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->a:Lcom/google/android/gms/common/api/a/O;

    iget-object v0, v0, Lcom/google/android/gms/common/api/a/O;->b:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/a;->b()Lcom/google/android/gms/common/api/f;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/common/api/a/u;->d:Lcom/google/android/gms/common/j;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/j;->zzbu(I)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_4

    move v2, v0

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private b(I)Z
    .locals 3

    iget v0, p0, Lcom/google/android/gms/common/api/a/u;->g:I

    if-eq v0, p1, :cond_0

    const-string/jumbo v0, "GoogleApiClientConnecting"

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/u;->a:Lcom/google/android/gms/common/api/a/O;

    iget-object v1, v1, Lcom/google/android/gms/common/api/a/O;->d:Lcom/google/android/gms/common/api/a/F;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/a/F;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "GoogleApiClientConnecting"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "GoogleApiClient connecting is in step "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/android/gms/common/api/a/u;->g:I

    invoke-static {v2}, Lcom/google/android/gms/common/api/a/u;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but received callback for step "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/common/api/a/u;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a/u;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/a/u;Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/a/u;->a(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    return v0
.end method

.method private static c(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "STEP_SERVICE_BINDINGS_AND_SIGN_IN"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "STEP_GETTING_REMOTE_SERVICE"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic c(Lcom/google/android/gms/common/api/a/u;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->b:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/common/api/a/u;)Lcom/google/android/gms/common/api/a/O;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->a:Lcom/google/android/gms/common/api/a/O;

    return-object v0
.end method

.method private d()Z
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/common/api/a/u;->h:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/common/api/a/u;->h:I

    iget v1, p0, Lcom/google/android/gms/common/api/a/u;->h:I

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/google/android/gms/common/api/a/u;->h:I

    if-gez v1, :cond_1

    const-string/jumbo v1, "GoogleApiClientConnecting"

    iget-object v2, p0, Lcom/google/android/gms/common/api/a/u;->a:Lcom/google/android/gms/common/api/a/O;

    iget-object v2, v2, Lcom/google/android/gms/common/api/a/O;->d:Lcom/google/android/gms/common/api/a/F;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/a/F;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "GoogleApiClientConnecting"

    const-string/jumbo v2, "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect."

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/common/api/a/u;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/a/u;->e:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/u;->a:Lcom/google/android/gms/common/api/a/O;

    iget v2, p0, Lcom/google/android/gms/common/api/a/u;->f:I

    iput v2, v1, Lcom/google/android/gms/common/api/a/O;->c:I

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/u;->e:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v1}, Lcom/google/android/gms/common/api/a/u;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e()V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/common/api/a/u;->h:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a/u;->m:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a/u;->n:Z

    if-eqz v0, :cond_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/api/a/u;->g:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->a:Lcom/google/android/gms/common/api/a/O;

    iget-object v0, v0, Lcom/google/android/gms/common/api/a/O;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/a/u;->h:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->a:Lcom/google/android/gms/common/api/a/O;

    iget-object v0, v0, Lcom/google/android/gms/common/api/a/O;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/f;

    iget-object v3, p0, Lcom/google/android/gms/common/api/a/u;->a:Lcom/google/android/gms/common/api/a/O;

    iget-object v3, v3, Lcom/google/android/gms/common/api/a/O;->b:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a/u;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a/u;->f()V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/google/android/gms/common/api/a/u;->a:Lcom/google/android/gms/common/api/a/O;

    iget-object v3, v3, Lcom/google/android/gms/common/api/a/O;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->u:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/common/api/a/R;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/common/api/a/x;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/common/api/a/x;-><init>(Lcom/google/android/gms/common/api/a/u;Ljava/util/ArrayList;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic e(Lcom/google/android/gms/common/api/a/u;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a/u;->m:Z

    return v0
.end method

.method static synthetic f(Lcom/google/android/gms/common/api/a/u;)Lcom/google/android/gms/b/F;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->k:Lcom/google/android/gms/b/F;

    return-object v0
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->a:Lcom/google/android/gms/common/api/a/O;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a/O;->f()V

    invoke-static {}, Lcom/google/android/gms/common/api/a/R;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/a/B;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/a/B;-><init>(Lcom/google/android/gms/common/api/a/u;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->k:Lcom/google/android/gms/b/F;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a/u;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->k:Lcom/google/android/gms/b/F;

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/u;->o:Lcom/google/android/gms/common/internal/a;

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/a/u;->q:Z

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/b/F;->a(Lcom/google/android/gms/common/internal/a;Z)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a/u;->a(Z)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->a:Lcom/google/android/gms/common/api/a/O;

    iget-object v0, v0, Lcom/google/android/gms/common/api/a/O;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/f;

    iget-object v2, p0, Lcom/google/android/gms/common/api/a/u;->a:Lcom/google/android/gms/common/api/a/O;

    iget-object v2, v2, Lcom/google/android/gms/common/api/a/O;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/e;->a_()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->i:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/a/u;->a:Lcom/google/android/gms/common/api/a/O;

    iget-object v1, v1, Lcom/google/android/gms/common/api/a/O;->e:Lcom/google/android/gms/common/api/a/c;

    invoke-interface {v1, v0}, Lcom/google/android/gms/common/api/a/c;->a(Landroid/os/Bundle;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->i:Landroid/os/Bundle;

    goto :goto_1
.end method

.method static synthetic g(Lcom/google/android/gms/common/api/a/u;)Ljava/util/Set;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->r:Lcom/google/android/gms/common/internal/G;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->r:Lcom/google/android/gms/common/internal/G;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/G;->c()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->r:Lcom/google/android/gms/common/internal/G;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/G;->e()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a;

    iget-object v4, p0, Lcom/google/android/gms/common/api/a/u;->a:Lcom/google/android/gms/common/api/a/O;

    iget-object v4, v4, Lcom/google/android/gms/common/api/a/O;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->b()Lcom/google/android/gms/common/api/f;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aV;

    iget-object v0, v0, Landroid/support/v7/widget/aV;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private g()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/a/u;->m:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->a:Lcom/google/android/gms/common/api/a/O;

    iget-object v0, v0, Lcom/google/android/gms/common/api/a/O;->d:Lcom/google/android/gms/common/api/a/F;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/api/a/F;->a:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/f;

    iget-object v2, p0, Lcom/google/android/gms/common/api/a/u;->a:Lcom/google/android/gms/common/api/a/O;

    iget-object v2, v2, Lcom/google/android/gms/common/api/a/O;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/common/api/a/u;->a:Lcom/google/android/gms/common/api/a/O;

    iget-object v2, v2, Lcom/google/android/gms/common/api/a/O;->b:Ljava/util/Map;

    new-instance v3, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic h(Lcom/google/android/gms/common/api/a/u;)Lcom/google/android/gms/common/internal/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->o:Lcom/google/android/gms/common/internal/a;

    return-object v0
.end method

.method private h()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method static synthetic i(Lcom/google/android/gms/common/api/a/u;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a/u;->g()V

    return-void
.end method

.method static synthetic j(Lcom/google/android/gms/common/api/a/u;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a/u;->e()V

    return-void
.end method

.method static synthetic k(Lcom/google/android/gms/common/api/a/u;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a/u;->b(I)Z

    move-result v0

    return v0
.end method

.method static synthetic l(Lcom/google/android/gms/common/api/a/u;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a/u;->d()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/a/k;)Lcom/google/android/gms/common/api/a/k;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a()V
    .locals 8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->a:Lcom/google/android/gms/common/api/a/O;

    iget-object v0, v0, Lcom/google/android/gms/common/api/a/O;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-boolean v6, p0, Lcom/google/android/gms/common/api/a/u;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/a/u;->e:Lcom/google/android/gms/common/ConnectionResult;

    iput v6, p0, Lcom/google/android/gms/common/api/a/u;->g:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/api/a/u;->l:I

    iput-boolean v6, p0, Lcom/google/android/gms/common/api/a/u;->n:Z

    iput-boolean v6, p0, Lcom/google/android/gms/common/api/a/u;->p:Z

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/u;->a:Lcom/google/android/gms/common/api/a/O;

    iget-object v1, v1, Lcom/google/android/gms/common/api/a/O;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->b()Lcom/google/android/gms/common/api/f;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/e;

    iget-object v2, p0, Lcom/google/android/gms/common/api/a/u;->s:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->a()Lcom/google/android/gms/common/api/d;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/e;->o()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/gms/common/api/a/u;->m:Z

    iget v4, p0, Lcom/google/android/gms/common/api/a/u;->l:I

    if-ge v2, v4, :cond_0

    iput v2, p0, Lcom/google/android/gms/common/api/a/u;->l:I

    :cond_0
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/common/api/a/u;->j:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->b()Lcom/google/android/gms/common/api/f;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v4, Lcom/google/android/gms/common/api/a/v;

    invoke-direct {v4, p0, v0, v2}, Lcom/google/android/gms/common/api/a/v;-><init>(Lcom/google/android/gms/common/api/a/u;Lcom/google/android/gms/common/api/a;I)V

    invoke-interface {v7, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a/u;->m:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->r:Lcom/google/android/gms/common/internal/G;

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/u;->a:Lcom/google/android/gms/common/api/a/O;

    iget-object v1, v1, Lcom/google/android/gms/common/api/a/O;->d:Lcom/google/android/gms/common/api/a/F;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/G;->a(Ljava/lang/Integer;)V

    new-instance v5, Lcom/google/android/gms/common/api/a/z;

    invoke-direct {v5, p0, v6}, Lcom/google/android/gms/common/api/a/z;-><init>(Lcom/google/android/gms/common/api/a/u;B)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->t:Lcom/google/android/gms/common/api/d;

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/u;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/common/api/a/u;->a:Lcom/google/android/gms/common/api/a/O;

    iget-object v2, v2, Lcom/google/android/gms/common/api/a/O;->d:Lcom/google/android/gms/common/api/a/F;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/a/F;->a()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/api/a/u;->r:Lcom/google/android/gms/common/internal/G;

    iget-object v4, p0, Lcom/google/android/gms/common/api/a/u;->r:Lcom/google/android/gms/common/internal/G;

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/G;->h()Lcom/google/android/gms/b/G;

    move-result-object v4

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/d;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/G;Ljava/lang/Object;Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/common/api/j;)Lcom/google/android/gms/common/api/e;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/F;

    iput-object v0, p0, Lcom/google/android/gms/common/api/a/u;->k:Lcom/google/android/gms/b/F;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->a:Lcom/google/android/gms/common/api/a/O;

    iget-object v0, v0, Lcom/google/android/gms/common/api/a/O;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/a/u;->h:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->u:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/common/api/a/R;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/a/w;

    invoke-direct {v2, p0, v7}, Lcom/google/android/gms/common/api/a/w;-><init>(Lcom/google/android/gms/common/api/a/u;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(I)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a/u;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a/u;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->i:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/common/api/a/u;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a/u;->f()V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a/u;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/a/u;->b(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;I)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a/u;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a/u;->f()V

    goto :goto_0
.end method

.method public final b()Z
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a/u;->h()V

    invoke-direct {p0, v2}, Lcom/google/android/gms/common/api/a/u;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/u;->a:Lcom/google/android/gms/common/api/a/O;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/a/O;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return v2
.end method

.method public final c()V
    .locals 0

    return-void
.end method
