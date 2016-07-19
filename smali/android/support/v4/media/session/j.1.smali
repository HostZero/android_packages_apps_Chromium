.class Landroid/support/v4/media/session/j;
.super Ljava/lang/Object;
.source "MediaControllerCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/u;


# instance fields
.field private synthetic a:Landroid/support/v4/media/session/h;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/session/h;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Landroid/support/v4/media/session/j;->a:Landroid/support/v4/media/session/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/session/h;B)V
    .locals 0

    .prologue
    .line 438
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/j;-><init>(Landroid/support/v4/media/session/h;)V

    return-void
.end method

.method public static a(IJJFJLjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 2034
    new-instance v2, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v2}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    move v3, p0

    move-wide v4, p1

    move v6, p5

    move-wide/from16 v7, p9

    .line 2035
    invoke-virtual/range {v2 .. v8}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    .line 2036
    invoke-virtual {v2, p3, p4}, Landroid/media/session/PlaybackState$Builder;->setBufferedPosition(J)Landroid/media/session/PlaybackState$Builder;

    .line 2037
    move-wide v0, p6

    invoke-virtual {v2, v0, v1}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    .line 2038
    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Landroid/media/session/PlaybackState$Builder;->setErrorMessage(Ljava/lang/CharSequence;)Landroid/media/session/PlaybackState$Builder;

    .line 2039
    invoke-interface/range {p11 .. p11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 2040
    check-cast v3, Landroid/media/session/PlaybackState$CustomAction;

    invoke-virtual {v2, v3}, Landroid/media/session/PlaybackState$Builder;->addCustomAction(Landroid/media/session/PlaybackState$CustomAction;)Landroid/media/session/PlaybackState$Builder;

    goto :goto_0

    .line 2042
    :cond_0
    move-wide/from16 v0, p12

    invoke-virtual {v2, v0, v1}, Landroid/media/session/PlaybackState$Builder;->setActiveQueueItemId(J)Landroid/media/session/PlaybackState$Builder;

    .line 2043
    move-object/from16 v0, p14

    invoke-virtual {v2, v0}, Landroid/media/session/PlaybackState$Builder;->setExtras(Landroid/os/Bundle;)Landroid/media/session/PlaybackState$Builder;

    .line 2044
    invoke-virtual {v2}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v2

    return-object v2
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1054
    check-cast p0, Landroid/media/RemoteControlClient;

    check-cast p1, Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

    invoke-virtual {p0, p1}, Landroid/media/RemoteControlClient;->setMetadataUpdateListener(Landroid/media/RemoteControlClient$OnMetadataUpdateListener;)V

    .line 1056
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Landroid/support/v4/media/session/j;->a:Landroid/support/v4/media/session/h;

    invoke-virtual {v0}, Landroid/support/v4/media/session/h;->a()V

    .line 442
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Landroid/support/v4/media/session/j;->a:Landroid/support/v4/media/session/h;

    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->a(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/h;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 453
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Landroid/support/v4/media/session/j;->a:Landroid/support/v4/media/session/h;

    invoke-static {p1}, Landroid/support/v4/media/MediaMetadataCompat;->a(Ljava/lang/Object;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/h;->a(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 459
    return-void
.end method
