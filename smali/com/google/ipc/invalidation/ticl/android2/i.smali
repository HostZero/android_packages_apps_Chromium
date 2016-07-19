.class public final Lcom/google/ipc/invalidation/ticl/android2/i;
.super Ljava/lang/Object;
.source "ProtocolIntents.java"


# static fields
.field static final a:Lcom/google/ipc/invalidation/ticl/a/ar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/ar;->a(II)Lcom/google/ipc/invalidation/ticl/a/ar;

    move-result-object v0

    sput-object v0, Lcom/google/ipc/invalidation/ticl/android2/i;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    return-void
.end method

.method public static a()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 251
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "ipcinv-implicit-scheduler"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/ipc/invalidation/ticl/a/X;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/X;->c()[B

    move-result-object v0

    .line 264
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "ipcinv-background-inv"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a([B)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 256
    sget-object v0, Lcom/google/ipc/invalidation/ticl/android2/i;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    new-instance v1, Lcom/google/ipc/invalidation/b/c;

    invoke-direct {v1, p0}, Lcom/google/ipc/invalidation/b/c;-><init>([B)V

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/h;->a(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/b/c;)Lcom/google/ipc/invalidation/ticl/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/h;->c()[B

    move-result-object v0

    .line 258
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "ipcinv-outbound-message"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
