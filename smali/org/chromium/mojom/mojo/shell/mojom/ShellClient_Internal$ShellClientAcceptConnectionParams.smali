.class final Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "ShellClient_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public allowedCapabilities:Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;

.field public localInterfaces:Lorg/chromium/mojo/bindings/InterfaceRequest;

.field public remoteInterfaces:Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider;

.field public resolvedName:Ljava/lang/String;

.field public source:Lorg/chromium/mojom/mojo/shell/mojom/Identity;

.field public sourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 584
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x30

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 585
    sput-object v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 623
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;-><init>(I)V

    .line 624
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 606
    const/16 v0, 0x30

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 620
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 632
    if-nez p0, :cond_0

    .line 633
    const/4 v0, 0x0

    .line 766
    :goto_0
    return-object v0

    .line 635
    :cond_0
    sget-object v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v2

    .line 636
    new-instance v1, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;

    iget v0, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v1, v0}, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;-><init>(I)V

    .line 639
    iget v0, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_1

    .line 642
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 644
    invoke-static {v0}, Lorg/chromium/mojom/mojo/shell/mojom/Identity;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/shell/mojom/Identity;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->source:Lorg/chromium/mojom/mojo/shell/mojom/Identity;

    .line 665
    :cond_1
    iget v0, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_2

    .line 668
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->sourceId:I

    .line 680
    :cond_2
    iget v0, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_3

    .line 683
    const/16 v0, 0x14

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->localInterfaces:Lorg/chromium/mojo/bindings/InterfaceRequest;

    .line 695
    :cond_3
    iget v0, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_4

    .line 698
    const/16 v0, 0x18

    sget-object v3, Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p0, v0, v5, v3}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider;

    iput-object v0, v1, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->remoteInterfaces:Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider;

    .line 718
    :cond_4
    iget v0, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_5

    .line 721
    const/16 v0, 0x20

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 723
    invoke-static {v0}, Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->allowedCapabilities:Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;

    .line 744
    :cond_5
    iget v0, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v0, :cond_6

    .line 747
    const/16 v0, 0x28

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->resolvedName:Ljava/lang/String;

    :cond_6
    move-object v0, v1

    .line 766
    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;
    .locals 1

    .prologue
    .line 627
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 773
    sget-object v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 779
    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->source:Lorg/chromium/mojom/mojo/shell/mojom/Identity;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 800
    iget v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->sourceId:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 813
    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->localInterfaces:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    .line 826
    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->remoteInterfaces:Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider;

    const/16 v2, 0x18

    sget-object v3, Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {v0, v1, v2, v5, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    .line 847
    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->allowedCapabilities:Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 868
    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->resolvedName:Ljava/lang/String;

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 886
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 893
    if-ne p1, p0, :cond_1

    .line 921
    :cond_0
    :goto_0
    return v0

    .line 895
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 896
    goto :goto_0

    .line 897
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 898
    goto :goto_0

    .line 900
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;

    .line 902
    iget-object v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->source:Lorg/chromium/mojom/mojo/shell/mojom/Identity;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->source:Lorg/chromium/mojom/mojo/shell/mojom/Identity;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 903
    goto :goto_0

    .line 905
    :cond_4
    iget v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->sourceId:I

    iget v3, p1, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->sourceId:I

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 906
    goto :goto_0

    .line 908
    :cond_5
    iget-object v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->localInterfaces:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->localInterfaces:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 909
    goto :goto_0

    .line 911
    :cond_6
    iget-object v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->remoteInterfaces:Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->remoteInterfaces:Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 912
    goto :goto_0

    .line 914
    :cond_7
    iget-object v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->allowedCapabilities:Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->allowedCapabilities:Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    .line 915
    goto :goto_0

    .line 917
    :cond_8
    iget-object v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->resolvedName:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->resolvedName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 918
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 930
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 932
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->source:Lorg/chromium/mojom/mojo/shell/mojom/Identity;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 934
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->sourceId:I

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 936
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->localInterfaces:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 938
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->remoteInterfaces:Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 940
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->allowedCapabilities:Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 942
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->resolvedName:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 944
    return v0
.end method
