.class public final Lcom/google/a/a/a/y;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoAndroidService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1016
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2021
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/a/a/y;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 2022
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/y;->cachedSize:I

    .line 1018
    return-void
.end method


# virtual methods
.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 999
    .line 2031
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 2032
    packed-switch v0, :pswitch_data_0

    .line 2036
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/y;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2037
    :pswitch_0
    return-object p0

    .line 2032
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
