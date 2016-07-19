.class Landroid/support/v4/media/session/r;
.super Landroid/support/v4/media/session/q;
.source "MediaControllerCompat.java"


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1267
    invoke-direct {p0}, Landroid/support/v4/media/session/q;-><init>()V

    .line 1268
    iput-object p1, p0, Landroid/support/v4/media/session/r;->a:Ljava/lang/Object;

    .line 1269
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 1273
    iget-object v0, p0, Landroid/support/v4/media/session/r;->a:Ljava/lang/Object;

    .line 2123
    check-cast v0, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->play()V

    .line 1274
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 1278
    iget-object v0, p0, Landroid/support/v4/media/session/r;->a:Ljava/lang/Object;

    .line 2127
    check-cast v0, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->pause()V

    .line 1279
    return-void
.end method
