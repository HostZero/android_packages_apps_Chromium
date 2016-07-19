.class public Lcom/google/ipc/invalidation/a/a;
.super Ljava/lang/Object;
.source "DigestFunction.java"


# instance fields
.field private a:Ljava/security/MessageDigest;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 2047
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2045
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ipc/invalidation/a/a;->b:Z

    .line 2049
    :try_start_0
    const-string/jumbo v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/a/a;->a:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2052
    return-void

    .line 2050
    :catch_0
    move-exception v0

    .line 2051
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1057
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ipc/invalidation/a/a;->b:Z

    .line 1058
    iget-object v0, p0, Lcom/google/ipc/invalidation/a/a;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 1059
    return-void
.end method

.method public a([B)V
    .locals 1

    .prologue
    .line 1063
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/a/a;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Landroid/support/customtabs/a;->checkState(Z)V

    .line 1064
    iget-object v0, p0, Lcom/google/ipc/invalidation/a/a;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 1065
    return-void

    .line 1063
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()[B
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1069
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/a/a;->b:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Landroid/support/customtabs/a;->checkState(Z)V

    .line 1070
    iput-boolean v1, p0, Lcom/google/ipc/invalidation/a/a;->b:Z

    .line 1071
    iget-object v0, p0, Lcom/google/ipc/invalidation/a/a;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0

    .line 1069
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
