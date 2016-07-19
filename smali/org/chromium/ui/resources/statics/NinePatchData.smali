.class Lorg/chromium/ui/resources/statics/NinePatchData;
.super Ljava/lang/Object;
.source "NinePatchData.java"


# instance fields
.field private mAperture:Landroid/graphics/Rect;

.field private final mDivX:[I

.field private final mDivY:[I

.field private final mHeight:I

.field private final mPadding:Landroid/graphics/Rect;

.field private final mWidth:I


# direct methods
.method private constructor <init>(IILandroid/graphics/Rect;[I[I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mWidth:I

    .line 41
    iput p2, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mHeight:I

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mWidth:I

    iget v4, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iget v4, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mHeight:I

    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mPadding:Landroid/graphics/Rect;

    .line 45
    array-length v0, p4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mDivX:[I

    .line 46
    array-length v0, p5

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mDivY:[I

    .line 48
    iget-object v0, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mDivX:[I

    array-length v1, p4

    invoke-static {p4, v6, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    iget-object v0, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mDivY:[I

    array-length v1, p5

    invoke-static {p5, v6, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mDivX:[I

    aget v1, v1, v6

    iget-object v2, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mDivY:[I

    aget v2, v2, v6

    iget-object v3, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mDivX:[I

    aget v3, v3, v7

    iget-object v4, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mDivY:[I

    aget v4, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mAperture:Landroid/graphics/Rect;

    .line 52
    return-void
.end method

.method public static create(Landroid/graphics/Bitmap;)Lorg/chromium/ui/resources/statics/NinePatchData;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 78
    if-nez p0, :cond_0

    move-object v0, v6

    .line 133
    :goto_0
    return-object v0

    .line 81
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    .line 82
    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move-object v0, v6

    goto :goto_0

    .line 84
    :cond_2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 87
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    if-nez v1, :cond_3

    move-object v0, v6

    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 91
    if-eqz v5, :cond_4

    and-int/lit8 v1, v5, 0x1

    if-eqz v1, :cond_5

    :cond_4
    move-object v0, v6

    goto :goto_0

    .line 94
    :cond_5
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    .line 95
    if-eqz v7, :cond_6

    and-int/lit8 v1, v7, 0x1

    if-eqz v1, :cond_7

    :cond_6
    move-object v0, v6

    goto :goto_0

    .line 98
    :cond_7
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 101
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 104
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 106
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 109
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v3, Landroid/graphics/Rect;->left:I

    .line 112
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v3, Landroid/graphics/Rect;->right:I

    .line 115
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v3, Landroid/graphics/Rect;->top:I

    .line 118
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v3, Landroid/graphics/Rect;->bottom:I

    .line 121
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 124
    new-array v4, v5, [I

    move v1, v0

    .line 125
    :goto_1
    if-ge v1, v5, :cond_8

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    aput v8, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 128
    :cond_8
    new-array v5, v7, [I

    .line 129
    :goto_2
    if-ge v0, v7, :cond_9

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    aput v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 131
    :cond_9
    new-instance v0, Lorg/chromium/ui/resources/statics/NinePatchData;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct/range {v0 .. v5}, Lorg/chromium/ui/resources/statics/NinePatchData;-><init>(IILandroid/graphics/Rect;[I[I)V
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 133
    :catch_0
    move-exception v0

    move-object v0, v6

    goto/16 :goto_0
.end method


# virtual methods
.method public getAperture()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mAperture:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPadding()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mPadding:Landroid/graphics/Rect;

    return-object v0
.end method
