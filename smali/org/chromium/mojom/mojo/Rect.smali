.class public final Lorg/chromium/mojom/mojo/Rect;
.super Lorg/chromium/mojo/bindings/Struct;
.source "Rect.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public height:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x18

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 21
    sput-object v0, Lorg/chromium/mojom/mojo/Rect;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/Rect;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/Rect;-><init>(I)V

    .line 52
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 48
    return-void
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 3

    .prologue
    .line 133
    sget-object v0, Lorg/chromium/mojom/mojo/Rect;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 139
    iget v1, p0, Lorg/chromium/mojom/mojo/Rect;->x:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 152
    iget v1, p0, Lorg/chromium/mojom/mojo/Rect;->y:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 165
    iget v1, p0, Lorg/chromium/mojom/mojo/Rect;->width:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 178
    iget v1, p0, Lorg/chromium/mojom/mojo/Rect;->height:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 188
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 195
    if-ne p1, p0, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v0

    .line 197
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 198
    goto :goto_0

    .line 199
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 200
    goto :goto_0

    .line 202
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/Rect;

    .line 204
    iget v2, p0, Lorg/chromium/mojom/mojo/Rect;->x:I

    iget v3, p1, Lorg/chromium/mojom/mojo/Rect;->x:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 205
    goto :goto_0

    .line 207
    :cond_4
    iget v2, p0, Lorg/chromium/mojom/mojo/Rect;->y:I

    iget v3, p1, Lorg/chromium/mojom/mojo/Rect;->y:I

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 208
    goto :goto_0

    .line 210
    :cond_5
    iget v2, p0, Lorg/chromium/mojom/mojo/Rect;->width:I

    iget v3, p1, Lorg/chromium/mojom/mojo/Rect;->width:I

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 211
    goto :goto_0

    .line 213
    :cond_6
    iget v2, p0, Lorg/chromium/mojom/mojo/Rect;->height:I

    iget v3, p1, Lorg/chromium/mojom/mojo/Rect;->height:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 214
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 226
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 228
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/chromium/mojom/mojo/Rect;->x:I

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 230
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/chromium/mojom/mojo/Rect;->y:I

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 232
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/chromium/mojom/mojo/Rect;->width:I

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 234
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/chromium/mojom/mojo/Rect;->height:I

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 236
    return v0
.end method
