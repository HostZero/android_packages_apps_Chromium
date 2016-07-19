.class public final Landroid/support/v4/media/session/MediaSessionCompat;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"


# instance fields
.field private final a:Landroid/support/v4/media/session/z;

.field private final b:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/z;)V
    .locals 1

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->b:Ljava/util/ArrayList;

    .line 182
    iput-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/z;

    .line 183
    new-instance v0, Landroid/support/v4/media/session/g;

    invoke-direct {v0, p1, p0}, Landroid/support/v4/media/session/g;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat;)V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->b:Ljava/util/ArrayList;

    .line 139
    if-nez p1, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "tag must not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 169
    invoke-static {p1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 172
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    .line 173
    new-instance v1, Landroid/support/v4/media/session/A;

    invoke-direct {v1, p1, p2}, Landroid/support/v4/media/session/A;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/z;

    .line 174
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/z;

    invoke-interface {v1, v0}, Landroid/support/v4/media/session/z;->a(Landroid/app/PendingIntent;)V

    .line 178
    :goto_0
    new-instance v0, Landroid/support/v4/media/session/g;

    invoke-direct {v0, p1, p0}, Landroid/support/v4/media/session/g;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat;)V

    .line 179
    return-void

    .line 176
    :cond_2
    new-instance v1, Landroid/support/v4/media/session/B;

    invoke-direct {v1, p1, p2, p3, v0}, Landroid/support/v4/media/session/B;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    iput-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/z;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 2

    .prologue
    .line 501
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat;

    new-instance v1, Landroid/support/v4/media/session/A;

    invoke-direct {v1, p1}, Landroid/support/v4/media/session/A;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/z;)V

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/z;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/z;->a(I)V

    .line 245
    return-void
.end method

.method public final a(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/z;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/z;->a(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 381
    return-void
.end method

.method public final a(Landroid/support/v4/media/VolumeProviderCompat;)V
    .locals 2

    .prologue
    .line 277
    if-nez p1, :cond_0

    .line 278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "volumeProvider may not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/z;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/z;->a(Landroid/support/v4/media/VolumeProviderCompat;)V

    .line 281
    return-void
.end method

.method public final a(Landroid/support/v4/media/session/H;)V
    .locals 2

    .prologue
    .line 474
    if-nez p1, :cond_0

    .line 475
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Listener may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    return-void
.end method

.method public final a(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/z;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/z;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 371
    return-void
.end method

.method public final a(Landroid/support/v4/media/session/w;)V
    .locals 2

    .prologue
    .line 194
    .line 1206
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/z;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-interface {v0, p1, v1}, Landroid/support/v4/media/session/z;->a(Landroid/support/v4/media/session/w;Landroid/os/Handler;)V

    .line 195
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/z;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/z;->a(Z)V

    .line 298
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/H;

    .line 299
    invoke-interface {v0}, Landroid/support/v4/media/session/H;->a()V

    goto :goto_0

    .line 301
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/z;

    invoke-interface {v0}, Landroid/support/v4/media/session/z;->a()Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/z;

    invoke-interface {v0}, Landroid/support/v4/media/session/z;->b()V

    .line 334
    return-void
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/z;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/z;->b(I)V

    .line 259
    return-void
.end method

.method public final b(Landroid/support/v4/media/session/H;)V
    .locals 2

    .prologue
    .line 487
    if-nez p1, :cond_0

    .line 488
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Listener may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 491
    return-void
.end method

.method public final c()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/z;

    invoke-interface {v0}, Landroid/support/v4/media/session/z;->c()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/z;

    invoke-interface {v0}, Landroid/support/v4/media/session/z;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/z;

    invoke-interface {v0}, Landroid/support/v4/media/session/z;->e()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
