.class final Landroid/support/v7/app/as;
.super Landroid/support/v4/media/session/h;
.source "MediaRouteControllerDialog.java"


# instance fields
.field private synthetic a:Landroid/support/v7/app/aj;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/aj;)V
    .locals 0

    .prologue
    .line 788
    iput-object p1, p0, Landroid/support/v7/app/as;->a:Landroid/support/v7/app/aj;

    invoke-direct {p0}, Landroid/support/v4/media/session/h;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/aj;B)V
    .locals 0

    .prologue
    .line 788
    invoke-direct {p0, p1}, Landroid/support/v7/app/as;-><init>(Landroid/support/v7/app/aj;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 791
    iget-object v0, p0, Landroid/support/v7/app/as;->a:Landroid/support/v7/app/aj;

    invoke-static {v0}, Landroid/support/v7/app/aj;->k(Landroid/support/v7/app/aj;)Landroid/support/v4/media/session/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Landroid/support/v7/app/as;->a:Landroid/support/v7/app/aj;

    invoke-static {v0}, Landroid/support/v7/app/aj;->k(Landroid/support/v7/app/aj;)Landroid/support/v4/media/session/g;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/as;->a:Landroid/support/v7/app/aj;

    invoke-static {v1}, Landroid/support/v7/app/aj;->l(Landroid/support/v7/app/aj;)Landroid/support/v7/app/as;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/g;->b(Landroid/support/v4/media/session/h;)V

    .line 793
    iget-object v0, p0, Landroid/support/v7/app/as;->a:Landroid/support/v7/app/aj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/app/aj;->a(Landroid/support/v7/app/aj;Landroid/support/v4/media/session/g;)Landroid/support/v4/media/session/g;

    .line 795
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 2

    .prologue
    .line 805
    iget-object v1, p0, Landroid/support/v7/app/as;->a:Landroid/support/v7/app/aj;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Landroid/support/v7/app/aj;->a(Landroid/support/v7/app/aj;Landroid/support/v4/media/MediaDescriptionCompat;)Landroid/support/v4/media/MediaDescriptionCompat;

    .line 806
    iget-object v0, p0, Landroid/support/v7/app/as;->a:Landroid/support/v7/app/aj;

    invoke-static {v0}, Landroid/support/v7/app/aj;->h(Landroid/support/v7/app/aj;)V

    .line 807
    return-void

    .line 805
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->a()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Landroid/support/v7/app/as;->a:Landroid/support/v7/app/aj;

    invoke-static {v0, p1}, Landroid/support/v7/app/aj;->a(Landroid/support/v7/app/aj;Landroid/support/v4/media/session/PlaybackStateCompat;)Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 800
    iget-object v0, p0, Landroid/support/v7/app/as;->a:Landroid/support/v7/app/aj;

    invoke-static {v0}, Landroid/support/v7/app/aj;->h(Landroid/support/v7/app/aj;)V

    .line 801
    return-void
.end method
