.class public final Landroid/support/v4/media/MediaMetadataCompat;
.super Ljava/lang/Object;
.source "MediaMetadataCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final a:Landroid/support/v4/g/a;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;


# instance fields
.field private final e:Landroid/os/Bundle;

.field private f:Ljava/lang/Object;

.field private g:Landroid/support/v4/media/MediaDescriptionCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 240
    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    .line 241
    sput-object v0, Landroid/support/v4/media/MediaMetadataCompat;->a:Landroid/support/v4/g/a;

    const-string/jumbo v1, "android.media.metadata.TITLE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->a:Landroid/support/v4/g/a;

    const-string/jumbo v1, "android.media.metadata.ARTIST"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->a:Landroid/support/v4/g/a;

    const-string/jumbo v1, "android.media.metadata.DURATION"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->a:Landroid/support/v4/g/a;

    const-string/jumbo v1, "android.media.metadata.ALBUM"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->a:Landroid/support/v4/g/a;

    const-string/jumbo v1, "android.media.metadata.AUTHOR"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->a:Landroid/support/v4/g/a;

    const-string/jumbo v1, "android.media.metadata.WRITER"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->a:Landroid/support/v4/g/a;

    const-string/jumbo v1, "android.media.metadata.COMPOSER"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->a:Landroid/support/v4/g/a;

    const-string/jumbo v1, "android.media.metadata.COMPILATION"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->a:Landroid/support/v4/g/a;

    const-string/jumbo v1, "android.media.metadata.DATE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->a:Landroid/support/v4/g/a;

    const-string/jumbo v1, "android.media.metadata.YEAR"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->a:Landroid/support/v4/g/a;

    const-string/jumbo v1, "android.media.metadata.GENRE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->a:Landroid/support/v4/g/a;

    const-string/jumbo v1, "android.media.metadata.TRACK_NUMBER"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->a:Landroid/support/v4/g/a;

    const-string/jumbo v1, "android.media.metadata.NUM_TRACKS"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->a:Landroid/support/v4/g/a;

    const-string/jumbo v1, "android.media.metadata.DISC_NUMBER"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->a:Landroid/support/v4/g/a;

    const-string/jumbo v1, "android.media.metadata.ALBUM_ARTIST"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->a:Landroid/support/v4/g/a;

    const-string/jumbo v1, "android.media.metadata.ART"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->a:Landroid/support/v4/g/a;

    const-string/jumbo v1, "android.media.metadata.ART_URI"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->a:Landroid/support/v4/g/a;

    const-string/jumbo v1, "android.media.metadata.ALBUM_ART"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->a:Landroid/support/v4/g/a;

    const-string/jumbo v1, "android.media.metadata.ALBUM_ART_URI"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->a:Landroid/support/v4/g/a;

    const-string/jumbo v1, "android.media.metadata.USER_RATING"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->a:Landroid/support/v4/g/a;

    const-string/jumbo v1, "android.media.metadata.RATING"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->a:Landroid/support/v4/g/a;

    const-string/jumbo v1, "android.media.metadata.DISPLAY_TITLE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->a:Landroid/support/v4/g/a;

    const-string/jumbo v1, "android.media.metadata.DISPLAY_SUBTITLE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->a:Landroid/support/v4/g/a;

    const-string/jumbo v1, "android.media.metadata.DISPLAY_DESCRIPTION"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->a:Landroid/support/v4/g/a;

    const-string/jumbo v1, "android.media.metadata.DISPLAY_ICON"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->a:Landroid/support/v4/g/a;

    const-string/jumbo v1, "android.media.metadata.DISPLAY_ICON_URI"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->a:Landroid/support/v4/g/a;

    const-string/jumbo v1, "android.media.metadata.MEDIA_ID"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.media.metadata.TITLE"

    aput-object v1, v0, v4

    const-string/jumbo v1, "android.media.metadata.ARTIST"

    aput-object v1, v0, v3

    const-string/jumbo v1, "android.media.metadata.ALBUM"

    aput-object v1, v0, v5

    const-string/jumbo v1, "android.media.metadata.ALBUM_ARTIST"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string/jumbo v2, "android.media.metadata.WRITER"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "android.media.metadata.AUTHOR"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "android.media.metadata.COMPOSER"

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/v4/media/MediaMetadataCompat;->b:[Ljava/lang/String;

    .line 280
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "android.media.metadata.DISPLAY_ICON"

    aput-object v1, v0, v4

    const-string/jumbo v1, "android.media.metadata.ART"

    aput-object v1, v0, v3

    const-string/jumbo v1, "android.media.metadata.ALBUM_ART"

    aput-object v1, v0, v5

    sput-object v0, Landroid/support/v4/media/MediaMetadataCompat;->c:[Ljava/lang/String;

    .line 286
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "android.media.metadata.DISPLAY_ICON_URI"

    aput-object v1, v0, v4

    const-string/jumbo v1, "android.media.metadata.ART_URI"

    aput-object v1, v0, v3

    const-string/jumbo v1, "android.media.metadata.ALBUM_ART_URI"

    aput-object v1, v0, v5

    sput-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:[Ljava/lang/String;

    .line 584
    new-instance v0, Landroid/support/v4/media/c;

    invoke-direct {v0}, Landroid/support/v4/media/c;-><init>()V

    sput-object v0, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat;->e:Landroid/os/Bundle;

    .line 298
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;B)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat;->e:Landroid/os/Bundle;

    .line 302
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 6

    .prologue
    .line 508
    if-eqz p0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 509
    :cond_0
    const/4 v0, 0x0

    .line 538
    :goto_0
    return-object v0

    .line 512
    :cond_1
    new-instance v2, Landroid/support/v4/media/d;

    invoke-direct {v2}, Landroid/support/v4/media/d;-><init>()V

    move-object v0, p0

    .line 1027
    check-cast v0, Landroid/media/MediaMetadata;

    invoke-virtual {v0}, Landroid/media/MediaMetadata;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 513
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 514
    sget-object v1, Landroid/support/v4/media/MediaMetadataCompat;->a:Landroid/support/v4/g/a;

    invoke-virtual {v1, v0}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 515
    if-eqz v1, :cond_2

    .line 516
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move-object v1, p0

    .line 1035
    check-cast v1, Landroid/media/MediaMetadata;

    invoke-virtual {v1, v0}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 522
    invoke-virtual {v2, v0, v4, v5}, Landroid/support/v4/media/d;->a(Ljava/lang/String;J)Landroid/support/v4/media/d;

    goto :goto_1

    :pswitch_1
    move-object v1, p0

    .line 1031
    check-cast v1, Landroid/media/MediaMetadata;

    invoke-virtual {v1, v0}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 518
    invoke-virtual {v2, v0, v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/d;

    goto :goto_1

    :pswitch_2
    move-object v1, p0

    .line 1039
    check-cast v1, Landroid/media/MediaMetadata;

    invoke-virtual {v1, v0}, Landroid/media/MediaMetadata;->getRating(Ljava/lang/String;)Landroid/media/Rating;

    move-result-object v1

    .line 526
    invoke-static {v1}, Landroid/support/v4/media/RatingCompat;->a(Ljava/lang/Object;)Landroid/support/v4/media/RatingCompat;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;Landroid/support/v4/media/RatingCompat;)Landroid/support/v4/media/d;

    goto :goto_1

    :pswitch_3
    move-object v1, p0

    .line 1043
    check-cast v1, Landroid/media/MediaMetadata;

    invoke-virtual {v1, v0}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 530
    invoke-virtual {v2, v0, v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/support/v4/media/d;

    goto :goto_1

    .line 536
    :cond_3
    invoke-virtual {v2}, Landroid/support/v4/media/d;->a()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    .line 537
    iput-object p0, v0, Landroid/support/v4/media/MediaMetadataCompat;->f:Ljava/lang/Object;

    goto :goto_0

    .line 516
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private c(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d()Landroid/support/v4/g/a;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->a:Landroid/support/v4/g/a;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 336
    if-eqz v0, :cond_0

    .line 337
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)Landroid/support/v4/media/RatingCompat;
    .locals 4

    .prologue
    .line 361
    const/4 v1, 0x0

    .line 363
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/RatingCompat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_0
    return-object v0

    .line 364
    :catch_0
    move-exception v0

    .line 366
    const-string/jumbo v2, "MediaMetadata"

    const-string/jumbo v3, "Failed to retrieve a key as Rating."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 379
    const/4 v1, 0x0

    .line 381
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :goto_0
    return-object v0

    .line 382
    :catch_0
    move-exception v0

    .line 384
    const-string/jumbo v2, "MediaMetadata"

    const-string/jumbo v3, "Failed to retrieve a key as Bitmap."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/support/v4/media/MediaDescriptionCompat;
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v3, 0x0

    .line 395
    iget-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat;->g:Landroid/support/v4/media/MediaDescriptionCompat;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat;->g:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 453
    :goto_0
    return-object v0

    .line 399
    :cond_0
    const-string/jumbo v0, "android.media.metadata.MEDIA_ID"

    invoke-direct {p0, v0}, Landroid/support/v4/media/MediaMetadataCompat;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 401
    new-array v6, v8, [Ljava/lang/CharSequence;

    .line 406
    const-string/jumbo v0, "android.media.metadata.DISPLAY_TITLE"

    invoke-direct {p0, v0}, Landroid/support/v4/media/MediaMetadataCompat;->c(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 407
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 410
    aput-object v0, v6, v3

    .line 411
    const-string/jumbo v0, "android.media.metadata.DISPLAY_SUBTITLE"

    invoke-direct {p0, v0}, Landroid/support/v4/media/MediaMetadataCompat;->c(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v6, v9

    .line 412
    const-string/jumbo v0, "android.media.metadata.DISPLAY_DESCRIPTION"

    invoke-direct {p0, v0}, Landroid/support/v4/media/MediaMetadataCompat;->c(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v6, v10

    :cond_1
    move v1, v3

    .line 427
    :goto_1
    if-ge v1, v8, :cond_6

    .line 428
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->c:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Landroid/support/v4/media/MediaMetadataCompat;->f(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 429
    if-eqz v0, :cond_4

    :goto_2
    move v1, v3

    .line 436
    :goto_3
    if-ge v1, v8, :cond_2

    .line 437
    sget-object v4, Landroid/support/v4/media/MediaMetadataCompat;->d:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {p0, v4}, Landroid/support/v4/media/MediaMetadataCompat;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 438
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 439
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 444
    :cond_2
    new-instance v1, Landroid/support/v4/media/MediaBrowserCompat;

    invoke-direct {v1}, Landroid/support/v4/media/MediaBrowserCompat;-><init>()V

    .line 445
    invoke-virtual {v1, v5}, Landroid/support/v4/media/MediaBrowserCompat;->a(Ljava/lang/String;)Landroid/support/v4/media/MediaBrowserCompat;

    .line 446
    aget-object v3, v6, v3

    invoke-virtual {v1, v3}, Landroid/support/v4/media/MediaBrowserCompat;->a(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaBrowserCompat;

    .line 447
    aget-object v3, v6, v9

    invoke-virtual {v1, v3}, Landroid/support/v4/media/MediaBrowserCompat;->b(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaBrowserCompat;

    .line 448
    aget-object v3, v6, v10

    invoke-virtual {v1, v3}, Landroid/support/v4/media/MediaBrowserCompat;->c(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaBrowserCompat;

    .line 449
    invoke-virtual {v1, v0}, Landroid/support/v4/media/MediaBrowserCompat;->a(Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaBrowserCompat;

    .line 450
    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaBrowserCompat;->a(Landroid/net/Uri;)Landroid/support/v4/media/MediaBrowserCompat;

    .line 451
    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserCompat;->a()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat;->g:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 453
    iget-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat;->g:Landroid/support/v4/media/MediaDescriptionCompat;

    goto :goto_0

    :cond_3
    move v0, v3

    move v1, v3

    .line 417
    :goto_4
    if-ge v1, v8, :cond_1

    const/4 v4, 0x7

    if-ge v0, v4, :cond_1

    .line 418
    sget-object v7, Landroid/support/v4/media/MediaMetadataCompat;->b:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    aget-object v0, v7, v0

    invoke-direct {p0, v0}, Landroid/support/v4/media/MediaMetadataCompat;->c(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 419
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 421
    add-int/lit8 v0, v1, 0x1

    aput-object v7, v6, v1

    :goto_5
    move v1, v0

    move v0, v4

    .line 423
    goto :goto_4

    .line 427
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 436
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    move-object v0, v2

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_5
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 350
    iget-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat;->e:Landroid/os/Bundle;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat;->e:Landroid/os/Bundle;

    return-object v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 552
    iget-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat;->f:Ljava/lang/Object;

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 553
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat;->f:Ljava/lang/Object;

    .line 581
    :goto_0
    return-object v0

    .line 1048
    :cond_1
    new-instance v1, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v1}, Landroid/media/MediaMetadata$Builder;-><init>()V

    .line 1481
    iget-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat;->e:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 557
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 558
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->a:Landroid/support/v4/g/a;

    invoke-virtual {v0, v2}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 559
    if-eqz v0, :cond_2

    .line 560
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 566
    :pswitch_0
    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->b(Ljava/lang/String;)J

    move-result-wide v6

    move-object v0, v1

    .line 2056
    check-cast v0, Landroid/media/MediaMetadata$Builder;

    invoke-virtual {v0, v2, v6, v7}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    goto :goto_1

    .line 562
    :pswitch_1
    invoke-direct {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->f(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v1

    .line 2052
    check-cast v0, Landroid/media/MediaMetadata$Builder;

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    goto :goto_1

    .line 570
    :pswitch_2
    invoke-direct {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->e(Ljava/lang/String;)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/RatingCompat;->a()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v1

    .line 2060
    check-cast v0, Landroid/media/MediaMetadata$Builder;

    check-cast v3, Landroid/media/Rating;

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetadata$Builder;->putRating(Ljava/lang/String;Landroid/media/Rating;)Landroid/media/MediaMetadata$Builder;

    goto :goto_1

    .line 574
    :pswitch_3
    invoke-direct {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->c(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v1

    .line 2064
    check-cast v0, Landroid/media/MediaMetadata$Builder;

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetadata$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/media/MediaMetadata$Builder;

    goto :goto_1

    .line 2072
    :cond_3
    check-cast v1, Landroid/media/MediaMetadata$Builder;

    invoke-virtual {v1}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v0

    .line 580
    iput-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat;->f:Ljava/lang/Object;

    .line 581
    iget-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat;->f:Ljava/lang/Object;

    goto :goto_0

    .line 560
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 458
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat;->e:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 464
    return-void
.end method
