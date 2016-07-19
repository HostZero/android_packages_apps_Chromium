.class public abstract Landroid/support/v4/media/session/h;
.super Ljava/lang/Object;
.source "MediaControllerCompat.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Landroid/support/v4/media/session/i;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput-boolean v2, p0, Landroid/support/v4/media/session/h;->c:Z

    .line 346
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 347
    new-instance v0, Landroid/support/v4/media/session/j;

    invoke-direct {v0, p0, v2}, Landroid/support/v4/media/session/j;-><init>(Landroid/support/v4/media/session/h;B)V

    .line 1042
    new-instance v1, Landroid/support/v4/media/session/v;

    invoke-direct {v1, v0}, Landroid/support/v4/media/session/v;-><init>(Landroid/support/v4/media/session/u;)V

    .line 347
    iput-object v1, p0, Landroid/support/v4/media/session/h;->a:Ljava/lang/Object;

    .line 351
    :goto_0
    return-void

    .line 349
    :cond_0
    new-instance v0, Landroid/support/v4/media/session/k;

    invoke-direct {v0, p0, v2}, Landroid/support/v4/media/session/k;-><init>(Landroid/support/v4/media/session/h;B)V

    iput-object v0, p0, Landroid/support/v4/media/session/h;->a:Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/media/session/h;)Landroid/support/v4/media/session/i;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Landroid/support/v4/media/session/h;->b:Landroid/support/v4/media/session/i;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v4/media/session/h;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 339
    .line 1435
    new-instance v0, Landroid/support/v4/media/session/i;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/session/i;-><init>(Landroid/support/v4/media/session/h;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/support/v4/media/session/h;->b:Landroid/support/v4/media/session/i;

    .line 339
    return-void
.end method

.method static synthetic a(Landroid/support/v4/media/session/h;Z)Z
    .locals 0

    .prologue
    .line 339
    iput-boolean p1, p0, Landroid/support/v4/media/session/h;->c:Z

    return p1
.end method

.method static synthetic b(Landroid/support/v4/media/session/h;)Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Landroid/support/v4/media/session/h;->c:Z

    return v0
.end method

.method static synthetic c(Landroid/support/v4/media/session/h;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Landroid/support/v4/media/session/h;->a:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 358
    return-void
.end method

.method public a(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 0

    .prologue
    .line 386
    return-void
.end method

.method public a(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 0

    .prologue
    .line 377
    return-void
.end method

.method public binderDied()V
    .locals 0

    .prologue
    .line 428
    invoke-virtual {p0}, Landroid/support/v4/media/session/h;->a()V

    .line 429
    return-void
.end method
