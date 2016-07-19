.class public Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BaseGifDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/os/Handler$Callback;
.implements Ljava/lang/Runnable;


# static fields
.field private static U:Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable$DecoderThread;

.field private static V:Landroid/os/Handler;

.field private static final b:[B

.field private static c:Landroid/graphics/Paint;

.field private static d:Landroid/graphics/Paint;


# instance fields
.field private A:I

.field private B:I

.field private C:[B

.field private D:I

.field private E:Z

.field private F:I

.field private G:[S

.field private H:[B

.field private I:[B

.field private J:[B

.field private K:Z

.field private L:[I

.field private M:I

.field private N:J

.field private O:Z

.field private P:I

.field private Q:I

.field private R:Z

.field private S:Z

.field private final T:Landroid/os/Handler;

.field private W:Z

.field private X:Z

.field private Y:I

.field private Z:I

.field protected a:Landroid/graphics/Bitmap;

.field private final aa:Landroid/graphics/Bitmap$Config;

.field private ab:Z

.field private e:Ljp/tomorrowkey/android/gifplayer/BaseGifImage;

.field private final f:[B

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:[I

.field private m:Z

.field private n:F

.field private volatile o:Z

.field private volatile p:Z

.field private volatile q:Z

.field private r:I

.field private s:Z

.field private t:I

.field private u:[I

.field private v:[I

.field private w:Z

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string/jumbo v0, "NETSCAPE2.0"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->b:[B

    return-void
.end method

.method public constructor <init>(Ljp/tomorrowkey/android/gifplayer/BaseGifImage;Landroid/graphics/Bitmap$Config;)V
    .locals 5

    .prologue
    const/16 v1, 0x1000

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 142
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 88
    iput-boolean v3, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->q:Z

    .line 106
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->C:[B

    .line 107
    iput v4, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->D:I

    .line 112
    new-array v0, v1, [S

    iput-object v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->G:[S

    .line 113
    new-array v0, v1, [B

    iput-object v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->H:[B

    .line 114
    const/16 v0, 0x1001

    new-array v0, v0, [B

    iput-object v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->I:[B

    .line 128
    iput-boolean v3, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->S:Z

    .line 129
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->T:Landroid/os/Handler;

    .line 136
    iput v2, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->Y:I

    .line 137
    iput v2, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->Z:I

    .line 140
    iput-boolean v3, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->ab:Z

    .line 143
    iput-object p2, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->aa:Landroid/graphics/Bitmap$Config;

    .line 146
    sget-object v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->U:Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable$DecoderThread;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable$DecoderThread;

    invoke-direct {v0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable$DecoderThread;-><init>()V

    .line 148
    sput-object v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->U:Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable$DecoderThread;

    invoke-virtual {v0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable$DecoderThread;->start()V

    .line 149
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->U:Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable$DecoderThread;

    invoke-virtual {v1}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable$DecoderThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->U:Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable$DecoderThread;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->V:Landroid/os/Handler;

    .line 152
    :cond_0
    sget-object v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->c:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 153
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->c:Landroid/graphics/Paint;

    .line 154
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 155
    sput-object v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 158
    :cond_1
    iput-object p1, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->e:Ljp/tomorrowkey/android/gifplayer/BaseGifImage;

    .line 159
    invoke-virtual {p1}, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->getData()[B

    move-result-object v0

    iput-object v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->f:[B

    .line 160
    iget-object v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->e:Ljp/tomorrowkey/android/gifplayer/BaseGifImage;

    iget v0, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->a:I

    iput v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    .line 161
    invoke-virtual {p1}, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->getWidth()I

    move-result v0

    iput v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->h:I

    iput v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->B:I

    iput v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->z:I

    .line 162
    invoke-virtual {p1}, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->getHeight()I

    move-result v0

    iput v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->i:I

    iput v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->A:I

    .line 163
    iget-object v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->e:Ljp/tomorrowkey/android/gifplayer/BaseGifImage;

    iget v0, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->d:I

    iput v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->r:I

    .line 164
    iget-object v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->e:Ljp/tomorrowkey/android/gifplayer/BaseGifImage;

    iget-boolean v0, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->b:Z

    iput-boolean v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->o:Z

    .line 166
    iget-boolean v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->o:Z

    if-nez v0, :cond_2

    .line 168
    :try_start_0
    iget v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->h:I

    iget v1, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->i:I

    iget-object v2, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->aa:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->a:Landroid/graphics/Bitmap;

    .line 169
    iget-object v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 170
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string/jumbo v1, "Cannot allocate bitmap"

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :catch_0
    move-exception v0

    iput-boolean v3, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->o:Z

    .line 186
    :cond_2
    :goto_0
    return-void

    .line 173
    :cond_3
    :try_start_1
    iget v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->h:I

    iget v1, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->i:I

    mul-int/2addr v0, v1

    .line 174
    new-array v1, v0, [I

    iput-object v1, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->l:[I

    .line 175
    new-array v0, v0, [B

    iput-object v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->J:[B

    .line 177
    iget v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->i:I

    iput v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->j:I

    .line 178
    iget v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->i:I

    iput v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->k:I

    .line 181
    sget-object v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->V:Landroid/os/Handler;

    sget-object v1, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->V:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 644
    iget-boolean v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->K:Z

    if-eqz v0, :cond_1

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    iget-object v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->L:[I

    if-nez v0, :cond_2

    .line 649
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->L:[I

    .line 651
    :try_start_0
    iget-object v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->l:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->L:[I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    :cond_2
    :goto_1
    iget-object v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->L:[I

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->l:[I

    iget-object v1, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->L:[I

    iget-object v2, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->l:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 659
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->K:Z

    goto :goto_0

    .line 652
    :catch_0
    move-exception v0

    .line 653
    const-string/jumbo v1, "GifDrawable"

    const-string/jumbo v2, "GifDrawable.backupFrame threw an OOME"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static synthetic a(Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;)Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic a(Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;Z)Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->X:Z

    return v0
.end method

.method private b()I
    .locals 5

    .prologue
    .line 845
    iget-object v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->f:[B

    iget v1, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 846
    if-lez v0, :cond_0

    .line 847
    iget-object v1, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->f:[B

    iget v2, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    iget-object v3, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->C:[B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 848
    iget v1, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    .line 850
    :cond_0
    return v0
.end method

.method static synthetic b(Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;)V
    .locals 22

    .prologue
    .line 39
    .line 1422
    move-object/from16 v0, p0

    iget-object v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->f:[B

    move-object/from16 v0, p0

    iget v3, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_1

    .line 1423
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->X:Z

    .line 1478
    :cond_0
    :goto_0
    return-void

    .line 1490
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->ab:Z

    if-eqz v2, :cond_4

    .line 1491
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->ab:Z

    .line 1428
    :cond_2
    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->D:I

    .line 1429
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->E:Z

    .line 1431
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->X:Z

    .line 1432
    const/16 v2, 0x64

    move-object/from16 v0, p0

    iput v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->Q:I

    .line 1433
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->u:[I

    .line 1436
    :cond_3
    :goto_2
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->f:[B

    move-object/from16 v0, p0

    iget v3, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    add-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 1437
    sparse-switch v2, :sswitch_data_0

    goto :goto_2

    .line 1441
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->f:[B

    move-object/from16 v0, p0

    iget v3, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    add-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 1442
    sparse-switch v2, :sswitch_data_1

    .line 1468
    invoke-direct/range {p0 .. p0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->d()V

    goto :goto_2

    .line 1494
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->D:I

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 1497
    :pswitch_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->K:Z

    goto :goto_1

    .line 1501
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->K:Z

    if-eqz v2, :cond_2

    .line 1502
    move-object/from16 v0, p0

    iget-object v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->L:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->l:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->L:[I

    array-length v6, v6

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 1507
    :pswitch_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->K:Z

    .line 1510
    const/4 v2, 0x0

    .line 1511
    move-object/from16 v0, p0

    iget-boolean v3, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->E:Z

    if-nez v3, :cond_5

    .line 1512
    move-object/from16 v0, p0

    iget v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->r:I

    .line 1514
    :cond_5
    const/4 v3, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->A:I

    if-ge v3, v4, :cond_2

    .line 1515
    move-object/from16 v0, p0

    iget v4, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->y:I

    add-int/2addr v4, v3

    move-object/from16 v0, p0

    iget v5, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->h:I

    mul-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->x:I

    add-int/2addr v4, v5

    .line 1516
    move-object/from16 v0, p0

    iget v5, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->z:I

    add-int/2addr v5, v4

    .line 1517
    :goto_4
    if-ge v4, v5, :cond_6

    .line 1518
    move-object/from16 v0, p0

    iget-object v6, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->l:[I

    aput v2, v6, v4

    .line 1517
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1514
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1530
    :sswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    .line 1532
    move-object/from16 v0, p0

    iget-object v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->f:[B

    move-object/from16 v0, p0

    iget v3, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    add-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 1534
    and-int/lit8 v3, v2, 0x1c

    shr-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->D:I

    .line 1535
    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->E:Z

    .line 1536
    invoke-direct/range {p0 .. p0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->c()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    move-object/from16 v0, p0

    iput v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->Q:I

    .line 1542
    move-object/from16 v0, p0

    iget v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->Q:I

    const/16 v3, 0xa

    if-gt v2, v3, :cond_7

    .line 1543
    const/16 v2, 0x64

    move-object/from16 v0, p0

    iput v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->Q:I

    .line 1546
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->f:[B

    move-object/from16 v0, p0

    iget v3, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    add-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    iput v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->F:I

    .line 1548
    move-object/from16 v0, p0

    iget v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    goto/16 :goto_2

    .line 1535
    :cond_8
    const/4 v2, 0x0

    goto :goto_5

    .line 1447
    :sswitch_3
    invoke-direct/range {p0 .. p0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->b()I

    .line 1448
    const/4 v3, 0x1

    .line 1449
    const/4 v2, 0x0

    :goto_6
    sget-object v4, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->b:[B

    array-length v4, v4

    if-ge v2, v4, :cond_2c

    .line 1450
    move-object/from16 v0, p0

    iget-object v4, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->C:[B

    aget-byte v4, v4, v2

    sget-object v5, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->b:[B

    aget-byte v5, v5, v2

    if-eq v4, v5, :cond_a

    .line 1451
    const/4 v2, 0x0

    .line 1455
    :goto_7
    if-eqz v2, :cond_b

    .line 1557
    :cond_9
    invoke-direct/range {p0 .. p0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->b()I

    move-result v2

    .line 1558
    if-lez v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->o:Z

    if-eqz v2, :cond_9

    goto/16 :goto_2

    .line 1449
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1458
    :cond_b
    invoke-direct/range {p0 .. p0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->d()V

    goto/16 :goto_2

    .line 1462
    :sswitch_4
    invoke-direct/range {p0 .. p0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->d()V

    goto/16 :goto_2

    .line 1465
    :sswitch_5
    invoke-direct/range {p0 .. p0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->d()V

    goto/16 :goto_2

    .line 1565
    :sswitch_6
    invoke-direct/range {p0 .. p0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->c()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->x:I

    .line 1566
    invoke-direct/range {p0 .. p0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->c()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->y:I

    .line 1568
    invoke-direct/range {p0 .. p0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->c()I

    move-result v2

    .line 1569
    invoke-direct/range {p0 .. p0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->c()I

    move-result v3

    .line 1572
    move-object/from16 v0, p0

    iget v4, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->h:I

    move-object/from16 v0, p0

    iget v5, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->x:I

    sub-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->z:I

    .line 1573
    move-object/from16 v0, p0

    iget v4, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->i:I

    move-object/from16 v0, p0

    iget v5, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->y:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->A:I

    .line 1576
    move-object/from16 v0, p0

    iput v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->B:I

    .line 1579
    mul-int/2addr v2, v3

    .line 1580
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->J:[B

    array-length v3, v3

    if-le v2, v3, :cond_c

    .line 1581
    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->J:[B

    .line 1584
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->f:[B

    move-object/from16 v0, p0

    iget v3, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    add-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    aget-byte v2, v2, v3

    and-int/lit16 v3, v2, 0xff

    .line 1588
    and-int/lit8 v2, v3, 0x40

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p0

    iput-boolean v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->w:Z

    .line 1589
    and-int/lit16 v2, v3, 0x80

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    :goto_9
    move-object/from16 v0, p0

    iput-boolean v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->s:Z

    .line 1590
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-int/lit8 v2, v3, 0x7

    add-int/lit8 v2, v2, 0x1

    int-to-double v2, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->t:I

    .line 1592
    move-object/from16 v0, p0

    iget-boolean v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->s:Z

    if-eqz v2, :cond_14

    .line 1593
    move-object/from16 v0, p0

    iget-object v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->u:[I

    if-nez v2, :cond_d

    .line 1594
    const/16 v2, 0x100

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->u:[I

    .line 1596
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->u:[I

    move-object/from16 v0, p0

    iget v4, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->t:I

    .line 2406
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v4, :cond_10

    .line 2407
    move-object/from16 v0, p0

    iget-object v5, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->f:[B

    move-object/from16 v0, p0

    iget v6, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    .line 2408
    move-object/from16 v0, p0

    iget-object v6, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->f:[B

    move-object/from16 v0, p0

    iget v7, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    add-int/lit8 v8, v7, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    .line 2409
    move-object/from16 v0, p0

    iget-object v7, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->f:[B

    move-object/from16 v0, p0

    iget v8, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    add-int/lit8 v9, v8, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    .line 2410
    const/high16 v8, -0x1000000

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v8

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    or-int/2addr v5, v7

    aput v5, v3, v2

    .line 2406
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1588
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 1589
    :cond_f
    const/4 v2, 0x0

    goto :goto_9

    .line 1597
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->u:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->v:[I

    .line 1604
    :cond_11
    :goto_b
    const/4 v2, 0x0

    .line 1605
    move-object/from16 v0, p0

    iget-boolean v3, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->E:Z

    if-eqz v3, :cond_12

    .line 1606
    move-object/from16 v0, p0

    iget-object v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->v:[I

    move-object/from16 v0, p0

    iget v3, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->F:I

    aget v2, v2, v3

    .line 1607
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->v:[I

    move-object/from16 v0, p0

    iget v4, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->F:I

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 1610
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->v:[I

    if-nez v3, :cond_13

    .line 1611
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->o:Z

    .line 1614
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v3, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->o:Z

    if-nez v3, :cond_0

    .line 2667
    move-object/from16 v0, p0

    iget v3, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->z:I

    move-object/from16 v0, p0

    iget v4, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->A:I

    mul-int v14, v3, v4

    .line 2670
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->f:[B

    move-object/from16 v0, p0

    iget v4, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    aget-byte v3, v3, v4

    and-int/lit16 v15, v3, 0xff

    .line 2671
    const/4 v3, 0x1

    shl-int v16, v3, v15

    .line 2672
    add-int/lit8 v17, v16, 0x1

    .line 2673
    add-int/lit8 v11, v16, 0x2

    .line 2674
    const/4 v10, -0x1

    .line 2675
    add-int/lit8 v9, v15, 0x1

    .line 2676
    const/4 v3, 0x1

    shl-int/2addr v3, v9

    add-int/lit8 v8, v3, -0x1

    .line 2677
    const/4 v3, 0x0

    :goto_c
    move/from16 v0, v16

    if-ge v3, v0, :cond_15

    .line 2678
    move-object/from16 v0, p0

    iget-object v4, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->G:[S

    const/4 v5, 0x0

    aput-short v5, v4, v3

    .line 2679
    move-object/from16 v0, p0

    iget-object v4, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->H:[B

    int-to-byte v5, v3

    aput-byte v5, v4, v3

    .line 2677
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1599
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->e:Ljp/tomorrowkey/android/gifplayer/BaseGifImage;

    iget-object v2, v2, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->c:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->v:[I

    .line 1600
    move-object/from16 v0, p0

    iget-object v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->e:Ljp/tomorrowkey/android/gifplayer/BaseGifImage;

    iget v2, v2, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->e:I

    move-object/from16 v0, p0

    iget v3, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->F:I

    if-ne v2, v3, :cond_11

    .line 1601
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->r:I

    goto/16 :goto_b

    .line 2683
    :cond_15
    const/4 v7, 0x0

    .line 2684
    const/4 v6, 0x0

    .line 2685
    const/4 v5, 0x0

    .line 2686
    const/4 v4, 0x0

    .line 2687
    const/4 v3, 0x0

    .line 2688
    :cond_16
    if-ge v3, v14, :cond_24

    .line 2689
    move-object/from16 v0, p0

    iget-object v12, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->f:[B

    move-object/from16 v0, p0

    iget v13, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    add-int/lit8 v18, v13, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    .line 2690
    if-eqz v12, :cond_24

    .line 2694
    move-object/from16 v0, p0

    iget v13, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    add-int v18, v13, v12

    .line 2695
    :cond_17
    move-object/from16 v0, p0

    iget v12, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    move/from16 v0, v18

    if-ge v12, v0, :cond_16

    .line 2696
    move-object/from16 v0, p0

    iget-object v12, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->f:[B

    move-object/from16 v0, p0

    iget v13, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    add-int/lit8 v19, v13, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    shl-int/2addr v12, v6

    add-int/2addr v7, v12

    .line 2697
    add-int/lit8 v6, v6, 0x8

    .line 2699
    :goto_d
    if-lt v6, v9, :cond_17

    .line 2701
    and-int v12, v7, v8

    .line 2702
    shr-int v13, v7, v9

    .line 2703
    sub-int v7, v6, v9

    .line 2706
    move/from16 v0, v16

    if-ne v12, v0, :cond_18

    .line 2708
    add-int/lit8 v9, v15, 0x1

    .line 2709
    const/4 v6, 0x1

    shl-int/2addr v6, v9

    add-int/lit8 v8, v6, -0x1

    .line 2710
    add-int/lit8 v11, v16, 0x2

    .line 2711
    const/4 v10, -0x1

    move v6, v7

    move v7, v13

    .line 2712
    goto :goto_d

    .line 2716
    :cond_18
    move/from16 v0, v17

    if-ne v12, v0, :cond_1d

    .line 2717
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    .line 1620
    :cond_19
    :goto_e
    invoke-direct/range {p0 .. p0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->d()V

    .line 1622
    move-object/from16 v0, p0

    iget-boolean v3, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->o:Z

    if-nez v3, :cond_0

    .line 1626
    move-object/from16 v0, p0

    iget v3, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->D:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1a

    .line 1627
    invoke-direct/range {p0 .. p0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->a()V

    .line 2789
    :cond_1a
    const/4 v6, 0x1

    .line 2790
    const/16 v5, 0x8

    .line 2791
    const/4 v4, 0x0

    .line 2792
    const/4 v3, 0x0

    :goto_f
    move-object/from16 v0, p0

    iget v7, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->A:I

    if-ge v3, v7, :cond_26

    .line 2794
    move-object/from16 v0, p0

    iget-boolean v7, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->w:Z

    if-eqz v7, :cond_28

    .line 2795
    move-object/from16 v0, p0

    iget v7, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->A:I

    if-lt v4, v7, :cond_1b

    .line 2796
    add-int/lit8 v6, v6, 0x1

    .line 2797
    packed-switch v6, :pswitch_data_1

    .line 2814
    :cond_1b
    :goto_10
    add-int v7, v4, v5

    move/from16 v21, v4

    move v4, v7

    move/from16 v7, v21

    .line 2816
    :goto_11
    move-object/from16 v0, p0

    iget v8, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->y:I

    add-int/2addr v7, v8

    .line 2817
    move-object/from16 v0, p0

    iget v8, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->i:I

    if-ge v7, v8, :cond_25

    .line 2818
    move-object/from16 v0, p0

    iget v8, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->h:I

    mul-int/2addr v7, v8

    .line 2819
    move-object/from16 v0, p0

    iget v8, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->x:I

    add-int/2addr v8, v7

    .line 2820
    move-object/from16 v0, p0

    iget v7, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->z:I

    add-int v10, v8, v7

    .line 2825
    move-object/from16 v0, p0

    iget v7, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->B:I

    mul-int/2addr v7, v3

    move v9, v8

    .line 2826
    :goto_12
    if-ge v9, v10, :cond_25

    .line 2828
    move-object/from16 v0, p0

    iget-object v11, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->J:[B

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, v11, v7

    and-int/lit16 v7, v7, 0xff

    .line 2829
    move-object/from16 v0, p0

    iget-object v11, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->v:[I

    aget v7, v11, v7

    .line 2830
    if-eqz v7, :cond_1c

    .line 2831
    move-object/from16 v0, p0

    iget-object v11, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->l:[I

    aput v7, v11, v9

    .line 2833
    :cond_1c
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    move v7, v8

    .line 2834
    goto :goto_12

    .line 2721
    :cond_1d
    const/4 v6, -0x1

    if-ne v10, v6, :cond_1e

    .line 2722
    move-object/from16 v0, p0

    iget-object v6, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->J:[B

    add-int/lit8 v5, v3, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->H:[B

    aget-byte v10, v10, v12

    aput-byte v10, v6, v3

    move v3, v5

    move v6, v7

    move v10, v12

    move v7, v13

    move v5, v12

    .line 2725
    goto/16 :goto_d

    .line 2729
    :cond_1e
    if-lt v12, v11, :cond_2b

    .line 2730
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->I:[B

    move-object/from16 v19, v0

    add-int/lit8 v6, v4, 0x1

    int-to-byte v5, v5

    aput-byte v5, v19, v4

    .line 2732
    const/16 v4, 0x1001

    if-ne v6, v4, :cond_2a

    .line 2733
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->o:Z

    goto/16 :goto_e

    :cond_1f
    move v5, v6

    .line 2738
    :goto_13
    move/from16 v0, v16

    if-lt v4, v0, :cond_22

    .line 2739
    const/16 v6, 0x1001

    if-ge v4, v6, :cond_20

    move-object/from16 v0, p0

    iget-object v6, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->G:[S

    aget-short v6, v6, v4

    if-ne v4, v6, :cond_21

    .line 2740
    :cond_20
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->o:Z

    goto/16 :goto_e

    .line 2744
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->I:[B

    move-object/from16 v19, v0

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->H:[B

    move-object/from16 v20, v0

    aget-byte v20, v20, v4

    aput-byte v20, v19, v5

    .line 2745
    move-object/from16 v0, p0

    iget-object v5, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->G:[S

    aget-short v4, v5, v4

    .line 2747
    const/16 v5, 0x1001

    if-ne v6, v5, :cond_1f

    .line 2748
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->o:Z

    goto/16 :goto_e

    .line 2753
    :cond_22
    move-object/from16 v0, p0

    iget-object v6, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->H:[B

    aget-byte v6, v6, v4

    .line 2754
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->I:[B

    move-object/from16 v19, v0

    add-int/lit8 v4, v5, 0x1

    int-to-byte v0, v6

    move/from16 v20, v0

    aput-byte v20, v19, v5

    .line 2757
    const/16 v5, 0x1000

    if-ge v11, v5, :cond_23

    .line 2758
    move-object/from16 v0, p0

    iget-object v5, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->G:[S

    int-to-short v10, v10

    aput-short v10, v5, v11

    .line 2759
    move-object/from16 v0, p0

    iget-object v5, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->H:[B

    int-to-byte v10, v6

    aput-byte v10, v5, v11

    .line 2760
    add-int/lit8 v11, v11, 0x1

    .line 2762
    and-int v5, v11, v8

    if-nez v5, :cond_23

    const/16 v5, 0x1000

    if-ge v11, v5, :cond_23

    .line 2763
    add-int/lit8 v9, v9, 0x1

    .line 2764
    add-int/2addr v8, v11

    :cond_23
    move v5, v4

    .line 2772
    :goto_14
    move-object/from16 v0, p0

    iget-object v10, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->J:[B

    add-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->I:[B

    move-object/from16 v19, v0

    add-int/lit8 v5, v5, -0x1

    aget-byte v19, v19, v5

    aput-byte v19, v10, v3

    .line 2773
    if-gtz v5, :cond_29

    move v3, v4

    move v10, v12

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v13

    .line 2774
    goto/16 :goto_d

    .line 2778
    :cond_24
    :goto_15
    if-ge v3, v14, :cond_19

    .line 2779
    move-object/from16 v0, p0

    iget-object v5, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->J:[B

    add-int/lit8 v4, v3, 0x1

    const/4 v6, 0x0

    aput-byte v6, v5, v3

    move v3, v4

    goto :goto_15

    .line 2799
    :pswitch_3
    const/4 v4, 0x4

    .line 2800
    goto/16 :goto_10

    .line 2802
    :pswitch_4
    const/4 v4, 0x2

    .line 2803
    const/4 v5, 0x4

    .line 2804
    goto/16 :goto_10

    .line 2806
    :pswitch_5
    const/4 v4, 0x1

    .line 2807
    const/4 v5, 0x2

    goto/16 :goto_10

    .line 2792
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_f

    .line 1632
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v3, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->E:Z

    if-eqz v3, :cond_27

    .line 1633
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->v:[I

    move-object/from16 v0, p0

    iget v4, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->F:I

    aput v2, v3, v4

    .line 1636
    :cond_27
    move-object/from16 v0, p0

    iget v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->M:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->M:I

    goto/16 :goto_0

    .line 1477
    :sswitch_7
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->X:Z

    goto/16 :goto_0

    :cond_28
    move v7, v3

    goto/16 :goto_11

    :cond_29
    move v3, v4

    goto :goto_14

    :cond_2a
    move v4, v10

    move v5, v6

    goto/16 :goto_13

    :cond_2b
    move v5, v4

    move v4, v12

    goto/16 :goto_13

    :cond_2c
    move v2, v3

    goto/16 :goto_7

    .line 1437
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_1
        0x2c -> :sswitch_6
        0x3b -> :sswitch_7
    .end sparse-switch

    .line 1442
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_5
        0xf9 -> :sswitch_2
        0xfe -> :sswitch_4
        0xff -> :sswitch_3
    .end sparse-switch

    .line 1494
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 2797
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic b(Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;Z)Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->o:Z

    return v0
.end method

.method private c()I
    .locals 4

    .prologue
    .line 858
    iget-object v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->f:[B

    iget v1, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 859
    iget-object v1, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->f:[B

    iget v2, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 860
    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method static synthetic c(Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->X:Z

    return v0
.end method

.method static synthetic c(Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;Z)Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->p:Z

    return v0
.end method

.method static synthetic d(Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->M:I

    return v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 870
    :cond_0
    iget-object v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->f:[B

    iget v1, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 871
    iget v1, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    .line 872
    if-gtz v0, :cond_0

    .line 873
    return-void
.end method

.method static synthetic e(Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;)I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic f(Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->Z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->Z:I

    return v0
.end method

.method static synthetic g(Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    .line 3382
    iget-object v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->e:Ljp/tomorrowkey/android/gifplayer/BaseGifImage;

    iget v0, v0, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->a:I

    iput v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->g:I

    .line 3383
    iput-boolean v1, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->K:Z

    .line 3384
    iput v1, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->M:I

    .line 3385
    iput v1, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->D:I

    .line 39
    return-void
.end method

.method static synthetic h(Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->o:Z

    return v0
.end method

.method static synthetic i(Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->p:Z

    return v0
.end method

.method static synthetic j(Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->Q:I

    return v0
.end method

.method static synthetic k(Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->T:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 272
    iget-boolean v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->o:Z

    if-nez v0, :cond_0

    iget v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->j:I

    if-eqz v0, :cond_0

    iget v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->k:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->W:Z

    if-nez v0, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iget-boolean v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->m:Z

    if-eqz v0, :cond_2

    .line 277
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 278
    iget v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->n:F

    iget v1, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->n:F

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 279
    iget-object v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->a:Landroid/graphics/Bitmap;

    sget-object v1, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 280
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 285
    :goto_1
    iget-boolean v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->O:Z

    if-eqz v0, :cond_3

    .line 286
    iget-boolean v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->R:Z

    if-nez v0, :cond_0

    .line 289
    iget-wide v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->N:J

    iget v2, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->P:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x5

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->N:J

    .line 292
    iget-wide v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->N:J

    invoke-virtual {p0, p0, v0, v1}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 282
    :cond_2
    iget-object v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->a:Landroid/graphics/Bitmap;

    sget-object v1, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 294
    :cond_3
    iget-boolean v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->p:Z

    if-nez v0, :cond_4

    .line 295
    invoke-virtual {p0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->start()V

    goto :goto_0

    .line 297
    :cond_4
    invoke-virtual {p0, p0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->i:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->h:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 877
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 878
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->P:I

    .line 879
    iget-object v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->l:[I

    iget v3, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->h:I

    iget v6, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->h:I

    iget v7, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->i:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 883
    iput-boolean v8, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->W:Z

    .line 884
    iput-boolean v2, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->R:Z

    .line 885
    invoke-virtual {p0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->invalidateSelf()V

    :cond_0
    move v2, v8

    .line 890
    :cond_1
    return v2
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->O:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3

    .prologue
    .line 242
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 243
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->j:I

    .line 244
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->k:I

    .line 245
    iget v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->j:I

    iget v1, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->h:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->k:I

    iget v1, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->i:I

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->m:Z

    .line 246
    iget-boolean v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->m:Z

    if-eqz v0, :cond_0

    .line 247
    iget v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->j:I

    int-to-float v0, v0

    iget v1, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->h:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->k:I

    int-to-float v1, v1

    iget v2, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->i:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->n:F

    .line 251
    :cond_0
    iget-boolean v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->o:Z

    if-nez v0, :cond_1

    .line 253
    sget-object v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->V:Landroid/os/Handler;

    sget-object v1, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->V:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 255
    :cond_1
    return-void

    .line 245
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 372
    iget-boolean v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->p:Z

    if-nez v0, :cond_0

    .line 373
    sget-object v0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->V:Landroid/os/Handler;

    sget-object v1, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->V:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 375
    :cond_0
    return-void
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 350
    iget-boolean v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->S:Z

    if-eqz v0, :cond_0

    .line 351
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->R:Z

    .line 354
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 318
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 322
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .prologue
    .line 259
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 260
    if-eqz p1, :cond_2

    .line 261
    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 262
    :cond_0
    invoke-virtual {p0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->start()V

    .line 267
    :cond_1
    :goto_0
    return v0

    .line 265
    :cond_2
    invoke-virtual {p0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->stop()V

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 331
    invoke-virtual {p0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 332
    iput-boolean v1, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->O:Z

    .line 333
    iget-boolean v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->q:Z

    if-nez v0, :cond_0

    .line 334
    iput-boolean v1, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->p:Z

    .line 336
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->N:J

    .line 337
    invoke-virtual {p0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->run()V

    .line 339
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 343
    invoke-virtual {p0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p0, p0}, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 346
    :cond_0
    return-void
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 358
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifDrawable;->O:Z

    .line 360
    return-void
.end method
