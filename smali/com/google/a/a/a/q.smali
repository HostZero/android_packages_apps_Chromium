.class public final Lcom/google/a/a/a/q;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoAndroidService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1091
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/a/a/q;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1092
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/q;->cachedSize:I

    .line 88
    return-void
.end method


# virtual methods
.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 69
    .line 1101
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 1102
    packed-switch v0, :pswitch_data_0

    .line 1106
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/q;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1107
    :pswitch_0
    return-object p0

    .line 1102
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
