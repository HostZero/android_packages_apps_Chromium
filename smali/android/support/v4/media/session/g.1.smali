.class public Landroid/support/v4/media/session/g;
.super Ljava/lang/Object;
.source "MediaControllerCompat.java"


# instance fields
.field private final a:Landroid/support/v4/media/session/l;

.field private final b:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    if-nez p2, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sessionToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    iput-object p2, p0, Landroid/support/v4/media/session/g;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 96
    new-instance v0, Landroid/support/v4/media/session/m;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/media/session/m;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    iput-object v0, p0, Landroid/support/v4/media/session/g;->a:Landroid/support/v4/media/session/l;

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_1
    new-instance v0, Landroid/support/v4/media/session/o;

    iget-object v1, p0, Landroid/support/v4/media/session/g;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-direct {v0, v1}, Landroid/support/v4/media/session/o;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    iput-object v0, p0, Landroid/support/v4/media/session/g;->a:Landroid/support/v4/media/session/l;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    if-nez p2, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "session must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->c()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/g;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 73
    new-instance v0, Landroid/support/v4/media/session/n;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/media/session/n;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat;)V

    iput-object v0, p0, Landroid/support/v4/media/session/g;->a:Landroid/support/v4/media/session/l;

    .line 79
    :goto_0
    return-void

    .line 74
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 75
    new-instance v0, Landroid/support/v4/media/session/m;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/media/session/m;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat;)V

    iput-object v0, p0, Landroid/support/v4/media/session/g;->a:Landroid/support/v4/media/session/l;

    goto :goto_0

    .line 77
    :cond_2
    new-instance v0, Landroid/support/v4/media/session/o;

    iget-object v1, p0, Landroid/support/v4/media/session/g;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-direct {v0, v1}, Landroid/support/v4/media/session/o;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    iput-object v0, p0, Landroid/support/v4/media/session/g;->a:Landroid/support/v4/media/session/l;

    goto :goto_0
.end method

.method static a(I)I
    .locals 1

    .prologue
    .line 2104
    packed-switch p0, :pswitch_data_0

    .line 2128
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 2107
    :pswitch_0
    const/16 v0, 0x8

    goto :goto_0

    .line 2109
    :pswitch_1
    const/16 v0, 0x9

    goto :goto_0

    .line 2111
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 2113
    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 2115
    :pswitch_4
    const/4 v0, 0x2

    goto :goto_0

    .line 2117
    :pswitch_5
    const/4 v0, 0x3

    goto :goto_0

    .line 2119
    :pswitch_6
    const/4 v0, 0x5

    goto :goto_0

    .line 2121
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 2124
    :pswitch_8
    const/4 v0, 0x6

    goto :goto_0

    .line 2126
    :pswitch_9
    const/4 v0, 0x1

    goto :goto_0

    .line 2104
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_9
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method static a(J)I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 2133
    const/4 v0, 0x0

    .line 2134
    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 2135
    const/16 v0, 0x20

    .line 2137
    :cond_0
    const-wide/16 v2, 0x2

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 2138
    or-int/lit8 v0, v0, 0x10

    .line 2140
    :cond_1
    const-wide/16 v2, 0x4

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 2141
    or-int/lit8 v0, v0, 0x4

    .line 2143
    :cond_2
    const-wide/16 v2, 0x8

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 2144
    or-int/lit8 v0, v0, 0x2

    .line 2146
    :cond_3
    const-wide/16 v2, 0x10

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 2147
    or-int/lit8 v0, v0, 0x1

    .line 2149
    :cond_4
    const-wide/16 v2, 0x20

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    .line 2150
    or-int/lit16 v0, v0, 0x80

    .line 2152
    :cond_5
    const-wide/16 v2, 0x40

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6

    .line 2153
    or-int/lit8 v0, v0, 0x40

    .line 2155
    :cond_6
    const-wide/16 v2, 0x200

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_7

    .line 2156
    or-int/lit8 v0, v0, 0x8

    .line 2158
    :cond_7
    return v0
.end method

.method public static a(IJJFJLjava/lang/CharSequence;JLjava/util/List;J)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 3067
    new-instance v2, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v2}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    move v3, p0

    move-wide v4, p1

    move v6, p5

    move-wide/from16 v7, p9

    .line 3068
    invoke-virtual/range {v2 .. v8}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    .line 3069
    invoke-virtual {v2, p3, p4}, Landroid/media/session/PlaybackState$Builder;->setBufferedPosition(J)Landroid/media/session/PlaybackState$Builder;

    .line 3070
    move-wide v0, p6

    invoke-virtual {v2, v0, v1}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    .line 3071
    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Landroid/media/session/PlaybackState$Builder;->setErrorMessage(Ljava/lang/CharSequence;)Landroid/media/session/PlaybackState$Builder;

    .line 3072
    invoke-interface/range {p11 .. p11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 3073
    check-cast v3, Landroid/media/session/PlaybackState$CustomAction;

    invoke-virtual {v2, v3}, Landroid/media/session/PlaybackState$Builder;->addCustomAction(Landroid/media/session/PlaybackState$CustomAction;)Landroid/media/session/PlaybackState$Builder;

    goto :goto_0

    .line 3075
    :cond_0
    move-wide/from16 v0, p12

    invoke-virtual {v2, v0, v1}, Landroid/media/session/PlaybackState$Builder;->setActiveQueueItemId(J)Landroid/media/session/PlaybackState$Builder;

    .line 3076
    invoke-virtual {v2}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v2

    return-object v2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2038
    new-instance v0, Landroid/media/session/MediaController;

    check-cast p1, Landroid/media/session/MediaSession$Token;

    invoke-direct {v0, p0, p1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    .line 3029
    const-string/jumbo v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3030
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 3031
    return-void
.end method

.method static a(Landroid/os/Bundle;Landroid/media/RemoteControlClient$MetadataEditor;)V
    .locals 4

    .prologue
    const/16 v1, 0x64

    .line 2162
    if-nez p0, :cond_1

    .line 2225
    :cond_0
    :goto_0
    return-void

    .line 2165
    :cond_1
    const-string/jumbo v0, "android.media.metadata.ART"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2166
    const-string/jumbo v0, "android.media.metadata.ART"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 2167
    invoke-virtual {p1, v1, v0}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 2173
    :cond_2
    :goto_1
    const-string/jumbo v0, "android.media.metadata.ALBUM"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2174
    const/4 v0, 0x1

    const-string/jumbo v1, "android.media.metadata.ALBUM"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 2177
    :cond_3
    const-string/jumbo v0, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2178
    const/16 v0, 0xd

    const-string/jumbo v1, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 2181
    :cond_4
    const-string/jumbo v0, "android.media.metadata.ARTIST"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2182
    const/4 v0, 0x2

    const-string/jumbo v1, "android.media.metadata.ARTIST"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 2185
    :cond_5
    const-string/jumbo v0, "android.media.metadata.AUTHOR"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2186
    const/4 v0, 0x3

    const-string/jumbo v1, "android.media.metadata.AUTHOR"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 2189
    :cond_6
    const-string/jumbo v0, "android.media.metadata.COMPILATION"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2190
    const/16 v0, 0xf

    const-string/jumbo v1, "android.media.metadata.COMPILATION"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 2193
    :cond_7
    const-string/jumbo v0, "android.media.metadata.COMPOSER"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2194
    const/4 v0, 0x4

    const-string/jumbo v1, "android.media.metadata.COMPOSER"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 2197
    :cond_8
    const-string/jumbo v0, "android.media.metadata.DATE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2198
    const/4 v0, 0x5

    const-string/jumbo v1, "android.media.metadata.DATE"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 2201
    :cond_9
    const-string/jumbo v0, "android.media.metadata.DISC_NUMBER"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2202
    const/16 v0, 0xe

    const-string/jumbo v1, "android.media.metadata.DISC_NUMBER"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 2205
    :cond_a
    const-string/jumbo v0, "android.media.metadata.DURATION"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2206
    const/16 v0, 0x9

    const-string/jumbo v1, "android.media.metadata.DURATION"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 2209
    :cond_b
    const-string/jumbo v0, "android.media.metadata.GENRE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2210
    const/4 v0, 0x6

    const-string/jumbo v1, "android.media.metadata.GENRE"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 2213
    :cond_c
    const-string/jumbo v0, "android.media.metadata.TITLE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2214
    const/4 v0, 0x7

    const-string/jumbo v1, "android.media.metadata.TITLE"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 2217
    :cond_d
    const-string/jumbo v0, "android.media.metadata.TRACK_NUMBER"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2218
    const/4 v0, 0x0

    const-string/jumbo v1, "android.media.metadata.TRACK_NUMBER"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 2221
    :cond_e
    const-string/jumbo v0, "android.media.metadata.WRITER"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2222
    const/16 v0, 0xb

    const-string/jumbo v1, "android.media.metadata.WRITER"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    goto/16 :goto_0

    .line 2168
    :cond_f
    const-string/jumbo v0, "android.media.metadata.ALBUM_ART"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2170
    const-string/jumbo v0, "android.media.metadata.ALBUM_ART"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 2171
    invoke-virtual {p1, v1, v0}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    goto/16 :goto_1
.end method

.method public static a(Ljava/lang/Object;I)V
    .locals 1

    .prologue
    .line 2078
    check-cast p0, Landroid/media/RemoteControlClient;

    invoke-static {p1}, Landroid/support/v4/media/session/g;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 2079
    return-void
.end method

.method public static a(Ljava/lang/Object;J)V
    .locals 1

    .prologue
    .line 2082
    check-cast p0, Landroid/media/RemoteControlClient;

    invoke-static {p1, p2}, Landroid/support/v4/media/session/g;->a(J)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    .line 2084
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 2099
    const-string/jumbo v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2100
    check-cast p1, Landroid/media/RemoteControlClient;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 2101
    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v4/media/session/q;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Landroid/support/v4/media/session/g;->a:Landroid/support/v4/media/session/l;

    invoke-interface {v0}, Landroid/support/v4/media/session/l;->a()Landroid/support/v4/media/session/q;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/support/v4/media/session/h;)V
    .locals 2

    .prologue
    .line 262
    .line 1274
    if-nez p1, :cond_0

    .line 1275
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1278
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1280
    iget-object v1, p0, Landroid/support/v4/media/session/g;->a:Landroid/support/v4/media/session/l;

    invoke-interface {v1, p1, v0}, Landroid/support/v4/media/session/l;->a(Landroid/support/v4/media/session/h;Landroid/os/Handler;)V

    .line 263
    return-void
.end method

.method public final b()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/v4/media/session/g;->a:Landroid/support/v4/media/session/l;

    invoke-interface {v0}, Landroid/support/v4/media/session/l;->b()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/support/v4/media/session/h;)V
    .locals 2

    .prologue
    .line 290
    if-nez p1, :cond_0

    .line 291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/g;->a:Landroid/support/v4/media/session/l;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/l;->a(Landroid/support/v4/media/session/h;)V

    .line 294
    return-void
.end method

.method public final c()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Landroid/support/v4/media/session/g;->a:Landroid/support/v4/media/session/l;

    invoke-interface {v0}, Landroid/support/v4/media/session/l;->c()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    return-object v0
.end method
