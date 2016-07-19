.class final Landroid/support/v7/media/R;
.super Landroid/support/v7/media/Q;
.source "RemoteControlClientCompat.java"


# instance fields
.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/lang/Object;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Landroid/support/v7/media/Q;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 1042
    const-string/jumbo v0, "media_router"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 130
    iput-object v0, p0, Landroid/support/v7/media/R;->c:Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Landroid/support/v7/media/R;->c:Ljava/lang/Object;

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/v7/media/c;->a(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/R;->d:Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Landroid/support/v7/media/R;->c:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v7/media/R;->d:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/support/v7/media/c;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/R;->e:Ljava/lang/Object;

    .line 135
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/media/U;)V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Landroid/support/v7/media/R;->e:Ljava/lang/Object;

    iget v1, p1, Landroid/support/v7/media/U;->a:I

    invoke-static {v0, v1}, Landroid/support/v7/media/c;->d(Ljava/lang/Object;I)V

    .line 141
    iget-object v0, p0, Landroid/support/v7/media/R;->e:Ljava/lang/Object;

    iget v1, p1, Landroid/support/v7/media/U;->b:I

    invoke-static {v0, v1}, Landroid/support/v7/media/c;->e(Ljava/lang/Object;I)V

    .line 143
    iget-object v0, p0, Landroid/support/v7/media/R;->e:Ljava/lang/Object;

    iget v1, p1, Landroid/support/v7/media/U;->c:I

    invoke-static {v0, v1}, Landroid/support/v7/media/c;->f(Ljava/lang/Object;I)V

    .line 145
    iget-object v0, p0, Landroid/support/v7/media/R;->e:Ljava/lang/Object;

    iget v1, p1, Landroid/support/v7/media/U;->d:I

    invoke-static {v0, v1}, Landroid/support/v7/media/c;->c(Ljava/lang/Object;I)V

    .line 147
    iget-object v0, p0, Landroid/support/v7/media/R;->e:Ljava/lang/Object;

    iget v1, p1, Landroid/support/v7/media/U;->e:I

    invoke-static {v0, v1}, Landroid/support/v7/media/c;->b(Ljava/lang/Object;I)V

    .line 150
    iget-boolean v0, p0, Landroid/support/v7/media/R;->f:Z

    if-nez v0, :cond_0

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/media/R;->f:Z

    .line 152
    iget-object v0, p0, Landroid/support/v7/media/R;->e:Ljava/lang/Object;

    new-instance v1, Landroid/support/v7/media/S;

    invoke-direct {v1, p0}, Landroid/support/v7/media/S;-><init>(Landroid/support/v7/media/R;)V

    invoke-static {v1}, Landroid/support/v7/media/c;->a(Landroid/support/v7/media/y;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/media/c;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Landroid/support/v7/media/R;->e:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v7/media/R;->a:Ljava/lang/Object;

    .line 1233
    check-cast v0, Landroid/media/MediaRouter$UserRouteInfo;

    check-cast v1, Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo;->setRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 157
    :cond_0
    return-void
.end method
