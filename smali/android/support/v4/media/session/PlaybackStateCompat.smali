.class public final Landroid/support/v4/media/session/PlaybackStateCompat;
.super Ljava/lang/Object;
.source "PlaybackStateCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:J

.field private final c:J

.field private final d:F

.field private final e:J

.field private final f:Ljava/lang/CharSequence;

.field private final g:J

.field private h:Ljava/util/List;

.field private final i:J

.field private final j:Landroid/os/Bundle;

.field private k:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 526
    new-instance v0, Landroid/support/v4/media/session/U;

    invoke-direct {v0}, Landroid/support/v4/media/session/U;-><init>()V

    sput-object v0, Landroid/support/v4/media/session/PlaybackStateCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IJJFJLjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->a:I

    .line 276
    iput-wide p2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->b:J

    .line 277
    iput-wide p4, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->c:J

    .line 278
    iput p6, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->d:F

    .line 279
    iput-wide p7, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->e:J

    .line 280
    iput-object p9, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->f:Ljava/lang/CharSequence;

    .line 281
    iput-wide p10, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->g:J

    .line 282
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->h:Ljava/util/List;

    .line 283
    iput-wide p13, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->i:J

    .line 284
    move-object/from16 v0, p15

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->j:Landroid/os/Bundle;

    .line 285
    return-void
.end method

.method synthetic constructor <init>(IJJFJLjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;B)V
    .locals 0

    .prologue
    .line 38
    invoke-direct/range {p0 .. p15}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJLjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->a:I

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->b:J

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->d:F

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->g:J

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->c:J

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->e:J

    .line 294
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->f:Ljava/lang/CharSequence;

    .line 295
    sget-object v0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->h:Ljava/util/List;

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->i:J

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->j:Landroid/os/Bundle;

    .line 298
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/media/session/PlaybackStateCompat;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->a:I

    return v0
.end method

.method public static a(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 18

    .prologue
    .line 464
    if-eqz p0, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    .line 465
    :cond_0
    const/4 v2, 0x0

    .line 491
    :goto_0
    return-object v2

    :cond_1
    move-object/from16 v2, p0

    .line 1056
    check-cast v2, Landroid/media/session/PlaybackState;

    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getCustomActions()Ljava/util/List;

    move-result-object v2

    .line 469
    const/4 v14, 0x0

    .line 470
    if-eqz v2, :cond_2

    .line 471
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 472
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 473
    invoke-static {v3}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->a(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    move-result-object v3

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 476
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-lt v2, v3, :cond_3

    move-object/from16 v2, p0

    .line 2027
    check-cast v2, Landroid/media/session/PlaybackState;

    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    .line 479
    :goto_2
    new-instance v2, Landroid/support/v4/media/session/PlaybackStateCompat;

    move-object/from16 v3, p0

    .line 2028
    check-cast v3, Landroid/media/session/PlaybackState;

    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    move-object/from16 v4, p0

    .line 2032
    check-cast v4, Landroid/media/session/PlaybackState;

    invoke-virtual {v4}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v4

    move-object/from16 v6, p0

    .line 2036
    check-cast v6, Landroid/media/session/PlaybackState;

    invoke-virtual {v6}, Landroid/media/session/PlaybackState;->getBufferedPosition()J

    move-result-wide v6

    move-object/from16 v8, p0

    .line 2040
    check-cast v8, Landroid/media/session/PlaybackState;

    invoke-virtual {v8}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v8

    move-object/from16 v9, p0

    .line 2044
    check-cast v9, Landroid/media/session/PlaybackState;

    invoke-virtual {v9}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v9

    move-object/from16 v11, p0

    .line 2048
    check-cast v11, Landroid/media/session/PlaybackState;

    invoke-virtual {v11}, Landroid/media/session/PlaybackState;->getErrorMessage()Ljava/lang/CharSequence;

    move-result-object v11

    move-object/from16 v12, p0

    .line 2052
    check-cast v12, Landroid/media/session/PlaybackState;

    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v12

    move-object/from16 v15, p0

    .line 2060
    check-cast v15, Landroid/media/session/PlaybackState;

    invoke-virtual {v15}, Landroid/media/session/PlaybackState;->getActiveQueueItemId()J

    move-result-wide v15

    .line 479
    invoke-direct/range {v2 .. v17}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJLjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V

    .line 490
    move-object/from16 v0, p0

    iput-object v0, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->k:Ljava/lang/Object;

    goto/16 :goto_0

    .line 476
    :cond_3
    const/16 v17, 0x0

    goto :goto_2
.end method

.method static synthetic b(Landroid/support/v4/media/session/PlaybackStateCompat;)J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->b:J

    return-wide v0
.end method

.method static synthetic c(Landroid/support/v4/media/session/PlaybackStateCompat;)F
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->d:F

    return v0
.end method

.method static synthetic d(Landroid/support/v4/media/session/PlaybackStateCompat;)J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->g:J

    return-wide v0
.end method

.method static synthetic e(Landroid/support/v4/media/session/PlaybackStateCompat;)J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->c:J

    return-wide v0
.end method

.method static synthetic f(Landroid/support/v4/media/session/PlaybackStateCompat;)J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->e:J

    return-wide v0
.end method

.method static synthetic g(Landroid/support/v4/media/session/PlaybackStateCompat;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->f:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic h(Landroid/support/v4/media/session/PlaybackStateCompat;)Ljava/util/List;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Landroid/support/v4/media/session/PlaybackStateCompat;)J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->i:J

    return-wide v0
.end method

.method static synthetic j(Landroid/support/v4/media/session/PlaybackStateCompat;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->j:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->a:I

    return v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 360
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->b:J

    return-wide v0
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->d:F

    return v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 405
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->e:J

    return-wide v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 430
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->g:J

    return-wide v0
.end method

.method public final f()Ljava/lang/Object;
    .locals 18

    .prologue
    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->k:Ljava/lang/Object;

    if-nez v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    .line 504
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->k:Ljava/lang/Object;

    .line 523
    :goto_0
    return-object v2

    .line 507
    :cond_1
    const/4 v14, 0x0

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->h:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 509
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v14, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 510
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 511
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 514
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-lt v2, v3, :cond_3

    .line 515
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->a:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->b:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->c:J

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->d:F

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->e:J

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->f:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->g:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->i:J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->j:Landroid/os/Bundle;

    move-object/from16 v17, v0

    invoke-static/range {v3 .. v17}, Landroid/support/v4/media/session/j;->a(IJJFJLjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->k:Ljava/lang/Object;

    .line 523
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->k:Ljava/lang/Object;

    goto :goto_0

    .line 519
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->a:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->b:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->c:J

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->d:F

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->e:J

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->f:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->g:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->i:J

    invoke-static/range {v3 .. v16}, Landroid/support/v4/media/session/g;->a(IJJFJLjava/lang/CharSequence;JLjava/util/List;J)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->k:Ljava/lang/Object;

    goto :goto_2
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PlaybackState {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    const-string/jumbo v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    const-string/jumbo v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 305
    const-string/jumbo v1, ", buffered position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 306
    const-string/jumbo v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->d:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 307
    const-string/jumbo v1, ", updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 308
    const-string/jumbo v1, ", actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 309
    const-string/jumbo v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->f:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 310
    const-string/jumbo v1, ", custom actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->h:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 311
    const-string/jumbo v1, ", active item id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 312
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 323
    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 325
    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->d:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 326
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->g:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 327
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 328
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 329
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->f:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 330
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->h:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 331
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->i:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 332
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->j:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 333
    return-void
.end method
