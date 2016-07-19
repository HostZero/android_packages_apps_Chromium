.class public final Landroid/support/v4/media/g;
.super Landroid/support/v4/media/f;
.source "TransportMediator.java"


# instance fields
.field final a:Landroid/support/v4/media/r;

.field final b:Landroid/view/KeyEvent$Callback;

.field private c:Landroid/content/Context;

.field private d:Landroid/media/AudioManager;

.field private e:Landroid/view/View;

.field private f:Landroid/support/v4/media/k;

.field private g:Ljava/util/ArrayList;

.field private h:Landroid/support/v4/media/j;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/media/r;)V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v4/media/g;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/support/v4/media/r;)V

    .line 153
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/support/v4/media/r;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-direct {p0}, Landroid/support/v4/media/f;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/g;->g:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Landroid/support/v4/media/h;

    invoke-direct {v0, p0}, Landroid/support/v4/media/h;-><init>(Landroid/support/v4/media/g;)V

    iput-object v0, p0, Landroid/support/v4/media/g;->h:Landroid/support/v4/media/j;

    .line 130
    new-instance v0, Landroid/support/v4/media/i;

    invoke-direct {v0, p0}, Landroid/support/v4/media/i;-><init>(Landroid/support/v4/media/g;)V

    iput-object v0, p0, Landroid/support/v4/media/g;->b:Landroid/view/KeyEvent$Callback;

    .line 160
    if-eqz p1, :cond_0

    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroid/support/v4/media/g;->c:Landroid/content/Context;

    .line 161
    iput-object p3, p0, Landroid/support/v4/media/g;->a:Landroid/support/v4/media/r;

    .line 162
    iget-object v0, p0, Landroid/support/v4/media/g;->c:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/support/v4/media/g;->d:Landroid/media/AudioManager;

    .line 163
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Landroid/support/v4/media/g;->e:Landroid/view/View;

    .line 164
    iget-object v0, p0, Landroid/support/v4/media/g;->e:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/r;->a(Landroid/view/View;)Ljava/lang/Object;

    .line 165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_2

    .line 166
    new-instance v0, Landroid/support/v4/media/k;

    iget-object v1, p0, Landroid/support/v4/media/g;->c:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/media/g;->d:Landroid/media/AudioManager;

    iget-object v3, p0, Landroid/support/v4/media/g;->e:Landroid/view/View;

    iget-object v4, p0, Landroid/support/v4/media/g;->h:Landroid/support/v4/media/j;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/media/k;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/view/View;Landroid/support/v4/media/j;)V

    iput-object v0, p0, Landroid/support/v4/media/g;->f:Landroid/support/v4/media/k;

    .line 171
    :goto_2
    return-void

    .line 160
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 163
    goto :goto_1

    .line 169
    :cond_2
    iput-object v1, p0, Landroid/support/v4/media/g;->f:Landroid/support/v4/media/k;

    goto :goto_2
.end method

.method static a(I)Z
    .locals 1

    .prologue
    .line 112
    sparse-switch p0, :sswitch_data_0

    .line 127
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 124
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 112
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method private h()V
    .locals 4

    .prologue
    .line 221
    .line 1212
    iget-object v0, p0, Landroid/support/v4/media/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1213
    const/4 v0, 0x0

    move-object v1, v0

    .line 222
    :goto_0
    if-eqz v1, :cond_1

    .line 223
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 224
    invoke-virtual {v3, p0}, Landroid/support/customtabs/a;->onPlayingChanged(Landroid/support/v4/media/f;)V

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1215
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/support/customtabs/a;

    .line 1216
    iget-object v1, p0, Landroid/support/v4/media/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v1, v0

    .line 1217
    goto :goto_0

    .line 227
    :cond_1
    return-void
.end method

.method private i()V
    .locals 8

    .prologue
    .line 239
    iget-object v0, p0, Landroid/support/v4/media/g;->f:Landroid/support/v4/media/k;

    if-eqz v0, :cond_0

    .line 240
    iget-object v2, p0, Landroid/support/v4/media/g;->f:Landroid/support/v4/media/k;

    iget-object v0, p0, Landroid/support/v4/media/g;->a:Landroid/support/v4/media/r;

    invoke-virtual {v0}, Landroid/support/v4/media/r;->onIsPlaying()Z

    move-result v3

    iget-object v0, p0, Landroid/support/v4/media/g;->a:Landroid/support/v4/media/r;

    invoke-virtual {v0}, Landroid/support/v4/media/r;->onGetCurrentPosition()J

    move-result-wide v4

    iget-object v0, p0, Landroid/support/v4/media/g;->a:Landroid/support/v4/media/r;

    invoke-virtual {v0}, Landroid/support/v4/media/r;->onGetTransportControlFlags()I

    move-result v6

    .line 2160
    iget-object v0, v2, Landroid/support/v4/media/k;->j:Landroid/media/RemoteControlClient;

    if-eqz v0, :cond_0

    .line 2161
    iget-object v7, v2, Landroid/support/v4/media/k;->j:Landroid/media/RemoteControlClient;

    if-eqz v3, :cond_1

    const/4 v0, 0x3

    move v1, v0

    :goto_0
    if-eqz v3, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v7, v1, v4, v5, v0}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    .line 2163
    iget-object v0, v2, Landroid/support/v4/media/k;->j:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v6}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    .line 244
    :cond_0
    return-void

    .line 2161
    :cond_1
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 258
    iget-object v0, p0, Landroid/support/v4/media/g;->f:Landroid/support/v4/media/k;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Landroid/support/v4/media/g;->f:Landroid/support/v4/media/k;

    .line 3150
    iget v1, v0, Landroid/support/v4/media/k;->l:I

    if-eq v1, v2, :cond_0

    .line 3151
    iput v2, v0, Landroid/support/v4/media/k;->l:I

    .line 3152
    iget-object v1, v0, Landroid/support/v4/media/k;->j:Landroid/media/RemoteControlClient;

    invoke-virtual {v1, v2}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 3154
    :cond_0
    iget-boolean v1, v0, Landroid/support/v4/media/k;->k:Z

    if-eqz v1, :cond_1

    .line 3155
    invoke-virtual {v0}, Landroid/support/v4/media/k;->a()V

    .line 261
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/g;->a:Landroid/support/v4/media/r;

    invoke-virtual {v0}, Landroid/support/v4/media/r;->onStart()V

    .line 262
    invoke-direct {p0}, Landroid/support/v4/media/g;->i()V

    .line 263
    invoke-direct {p0}, Landroid/support/v4/media/g;->h()V

    .line 264
    return-void
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Landroid/support/v4/media/g;->a:Landroid/support/v4/media/r;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/r;->onSeekTo(J)V

    .line 307
    return-void
.end method

.method public final a(Landroid/support/customtabs/a;)V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Landroid/support/v4/media/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 272
    iget-object v0, p0, Landroid/support/v4/media/g;->f:Landroid/support/v4/media/k;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Landroid/support/v4/media/g;->f:Landroid/support/v4/media/k;

    .line 3168
    iget v1, v0, Landroid/support/v4/media/k;->l:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 3169
    iput v3, v0, Landroid/support/v4/media/k;->l:I

    .line 3170
    iget-object v1, v0, Landroid/support/v4/media/k;->j:Landroid/media/RemoteControlClient;

    invoke-virtual {v1, v3}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 3172
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/media/k;->b()V

    .line 275
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/g;->a:Landroid/support/v4/media/r;

    invoke-virtual {v0}, Landroid/support/v4/media/r;->onPause()V

    .line 276
    invoke-direct {p0}, Landroid/support/v4/media/g;->i()V

    .line 277
    invoke-direct {p0}, Landroid/support/v4/media/g;->h()V

    .line 278
    return-void
.end method

.method public final b(Landroid/support/customtabs/a;)V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Landroid/support/v4/media/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 209
    return-void
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Landroid/support/v4/media/g;->a:Landroid/support/v4/media/r;

    invoke-virtual {v0}, Landroid/support/v4/media/r;->onGetDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Landroid/support/v4/media/g;->a:Landroid/support/v4/media/r;

    invoke-virtual {v0}, Landroid/support/v4/media/r;->onGetCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Landroid/support/v4/media/g;->a:Landroid/support/v4/media/r;

    invoke-virtual {v0}, Landroid/support/v4/media/r;->onIsPlaying()Z

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Landroid/support/v4/media/g;->a:Landroid/support/v4/media/r;

    invoke-virtual {v0}, Landroid/support/v4/media/r;->onGetBufferPercentage()I

    move-result v0

    return v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Landroid/support/v4/media/g;->a:Landroid/support/v4/media/r;

    invoke-virtual {v0}, Landroid/support/v4/media/r;->onGetTransportControlFlags()I

    move-result v0

    return v0
.end method
