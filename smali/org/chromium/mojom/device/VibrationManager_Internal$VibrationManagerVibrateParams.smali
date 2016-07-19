.class final Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "VibrationManager_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public milliseconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 183
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 184
    sput-object v0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;-><init>(I)V

    .line 203
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 195
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 199
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;
    .locals 4

    .prologue
    .line 211
    if-nez p0, :cond_1

    .line 212
    const/4 v0, 0x0

    .line 240
    :cond_0
    :goto_0
    return-object v0

    .line 214
    :cond_1
    sget-object v0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 215
    new-instance v0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;

    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v0, v2}, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;-><init>(I)V

    .line 218
    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v1, :cond_0

    .line 221
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;->milliseconds:J

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;
    .locals 1

    .prologue
    .line 206
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    .prologue
    .line 247
    sget-object v0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 253
    iget-wide v2, p0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;->milliseconds:J

    const/16 v1, 0x8

    invoke-virtual {v0, v2, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    .line 271
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 278
    if-ne p1, p0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return v0

    .line 280
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 281
    goto :goto_0

    .line 282
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 283
    goto :goto_0

    .line 285
    :cond_3
    check-cast p1, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;

    .line 287
    iget-wide v2, p0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;->milliseconds:J

    iget-wide v4, p1, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;->milliseconds:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    .line 288
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 300
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 302
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;->milliseconds:J

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 304
    return v0
.end method
