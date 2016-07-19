.class final Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "CookieStore_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public success:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 709
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 710
    sput-object v0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 728
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParams;-><init>(I)V

    .line 729
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 721
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 725
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParams;
    .locals 3

    .prologue
    .line 737
    if-nez p0, :cond_1

    .line 738
    const/4 v0, 0x0

    .line 766
    :cond_0
    :goto_0
    return-object v0

    .line 740
    :cond_1
    sget-object v0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 741
    new-instance v0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParams;

    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v0, v2}, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParams;-><init>(I)V

    .line 744
    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v1, :cond_0

    .line 747
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v1

    iput-boolean v1, v0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParams;->success:Z

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParams;
    .locals 1

    .prologue
    .line 732
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    .prologue
    .line 773
    sget-object v0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 779
    iget-boolean v1, p0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParams;->success:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    .line 797
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 804
    if-ne p1, p0, :cond_1

    .line 817
    :cond_0
    :goto_0
    return v0

    .line 806
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 807
    goto :goto_0

    .line 808
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 809
    goto :goto_0

    .line 811
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParams;

    .line 813
    iget-boolean v2, p0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParams;->success:Z

    iget-boolean v3, p1, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParams;->success:Z

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 814
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 826
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 828
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParams;->success:Z

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 830
    return v0
.end method
