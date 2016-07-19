.class public final Lorg/chromium/mojom/device/BatteryStatus;
.super Lorg/chromium/mojo/bindings/Struct;
.source "BatteryStatus.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public charging:Z

.field public chargingTime:D

.field public dischargingTime:D

.field public level:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x28

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 21
    sput-object v0, Lorg/chromium/mojom/device/BatteryStatus;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/device/BatteryStatus;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/device/BatteryStatus;-><init>(I)V

    .line 60
    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    .prologue
    .line 38
    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/mojom/device/BatteryStatus;->charging:Z

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/mojom/device/BatteryStatus;->chargingTime:D

    .line 49
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Lorg/chromium/mojom/device/BatteryStatus;->dischargingTime:D

    .line 53
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/chromium/mojom/device/BatteryStatus;->level:D

    .line 56
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/device/BatteryStatus;
    .locals 4

    .prologue
    .line 68
    if-nez p0, :cond_1

    .line 69
    const/4 v0, 0x0

    .line 166
    :cond_0
    :goto_0
    return-object v0

    .line 71
    :cond_1
    sget-object v0, Lorg/chromium/mojom/device/BatteryStatus;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 72
    new-instance v0, Lorg/chromium/mojom/device/BatteryStatus;

    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v0, v2}, Lorg/chromium/mojom/device/BatteryStatus;-><init>(I)V

    .line 75
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_2

    .line 78
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v2

    iput-boolean v2, v0, Lorg/chromium/mojom/device/BatteryStatus;->charging:Z

    .line 98
    :cond_2
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_3

    .line 101
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide v2

    iput-wide v2, v0, Lorg/chromium/mojom/device/BatteryStatus;->chargingTime:D

    .line 121
    :cond_3
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_4

    .line 124
    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide v2

    iput-wide v2, v0, Lorg/chromium/mojom/device/BatteryStatus;->dischargingTime:D

    .line 144
    :cond_4
    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v1, :cond_0

    .line 147
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide v2

    iput-wide v2, v0, Lorg/chromium/mojom/device/BatteryStatus;->level:D

    goto :goto_0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    .prologue
    .line 173
    sget-object v0, Lorg/chromium/mojom/device/BatteryStatus;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 179
    iget-boolean v1, p0, Lorg/chromium/mojom/device/BatteryStatus;->charging:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    .line 200
    iget-wide v2, p0, Lorg/chromium/mojom/device/BatteryStatus;->chargingTime:D

    const/16 v1, 0x10

    invoke-virtual {v0, v2, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    .line 221
    iget-wide v2, p0, Lorg/chromium/mojom/device/BatteryStatus;->dischargingTime:D

    const/16 v1, 0x18

    invoke-virtual {v0, v2, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    .line 242
    iget-wide v2, p0, Lorg/chromium/mojom/device/BatteryStatus;->level:D

    const/16 v1, 0x20

    invoke-virtual {v0, v2, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    .line 260
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 267
    if-ne p1, p0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v0

    .line 269
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 270
    goto :goto_0

    .line 271
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 272
    goto :goto_0

    .line 274
    :cond_3
    check-cast p1, Lorg/chromium/mojom/device/BatteryStatus;

    .line 276
    iget-boolean v2, p0, Lorg/chromium/mojom/device/BatteryStatus;->charging:Z

    iget-boolean v3, p1, Lorg/chromium/mojom/device/BatteryStatus;->charging:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 277
    goto :goto_0

    .line 279
    :cond_4
    iget-wide v2, p0, Lorg/chromium/mojom/device/BatteryStatus;->chargingTime:D

    iget-wide v4, p1, Lorg/chromium/mojom/device/BatteryStatus;->chargingTime:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_5

    move v0, v1

    .line 280
    goto :goto_0

    .line 282
    :cond_5
    iget-wide v2, p0, Lorg/chromium/mojom/device/BatteryStatus;->dischargingTime:D

    iget-wide v4, p1, Lorg/chromium/mojom/device/BatteryStatus;->dischargingTime:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_6

    move v0, v1

    .line 283
    goto :goto_0

    .line 285
    :cond_6
    iget-wide v2, p0, Lorg/chromium/mojom/device/BatteryStatus;->level:D

    iget-wide v4, p1, Lorg/chromium/mojom/device/BatteryStatus;->level:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    .line 286
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 298
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 300
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/chromium/mojom/device/BatteryStatus;->charging:Z

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 302
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lorg/chromium/mojom/device/BatteryStatus;->chargingTime:D

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    .line 304
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lorg/chromium/mojom/device/BatteryStatus;->dischargingTime:D

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    .line 306
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lorg/chromium/mojom/device/BatteryStatus;->level:D

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    .line 308
    return v0
.end method
