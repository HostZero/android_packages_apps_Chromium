.class public final Lcom/google/a/a/a/a/j;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoClientProtocol.java"


# instance fields
.field public a:Lcom/google/a/a/a/a/i;

.field public b:Lcom/google/a/a/a/a/p;

.field public c:Lcom/google/a/a/a/a/x;

.field public d:Lcom/google/a/a/a/a/D;

.field public e:Lcom/google/a/a/a/a/q;

.field public f:Lcom/google/a/a/a/a/n;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1218
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2223
    iput-object v0, p0, Lcom/google/a/a/a/a/j;->a:Lcom/google/a/a/a/a/i;

    .line 2224
    iput-object v0, p0, Lcom/google/a/a/a/a/j;->b:Lcom/google/a/a/a/a/p;

    .line 2225
    iput-object v0, p0, Lcom/google/a/a/a/a/j;->c:Lcom/google/a/a/a/a/x;

    .line 2226
    iput-object v0, p0, Lcom/google/a/a/a/a/j;->d:Lcom/google/a/a/a/a/D;

    .line 2227
    iput-object v0, p0, Lcom/google/a/a/a/a/j;->e:Lcom/google/a/a/a/a/q;

    .line 2228
    iput-object v0, p0, Lcom/google/a/a/a/a/j;->f:Lcom/google/a/a/a/a/n;

    .line 2229
    iput-object v0, p0, Lcom/google/a/a/a/a/j;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 2230
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/j;->cachedSize:I

    .line 1220
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 1260
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1261
    iget-object v1, p0, Lcom/google/a/a/a/a/j;->a:Lcom/google/a/a/a/a/i;

    if-eqz v1, :cond_0

    .line 1262
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/a/j;->a:Lcom/google/a/a/a/a/i;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1265
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/a/j;->b:Lcom/google/a/a/a/a/p;

    if-eqz v1, :cond_1

    .line 1266
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/a/j;->b:Lcom/google/a/a/a/a/p;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1269
    :cond_1
    iget-object v1, p0, Lcom/google/a/a/a/a/j;->c:Lcom/google/a/a/a/a/x;

    if-eqz v1, :cond_2

    .line 1270
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/a/a/a/a/j;->c:Lcom/google/a/a/a/a/x;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1273
    :cond_2
    iget-object v1, p0, Lcom/google/a/a/a/a/j;->d:Lcom/google/a/a/a/a/D;

    if-eqz v1, :cond_3

    .line 1274
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/a/a/a/a/j;->d:Lcom/google/a/a/a/a/D;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1277
    :cond_3
    iget-object v1, p0, Lcom/google/a/a/a/a/j;->e:Lcom/google/a/a/a/a/q;

    if-eqz v1, :cond_4

    .line 1278
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/a/a/a/a/j;->e:Lcom/google/a/a/a/a/q;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1281
    :cond_4
    iget-object v1, p0, Lcom/google/a/a/a/a/j;->f:Lcom/google/a/a/a/a/n;

    if-eqz v1, :cond_5

    .line 1282
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/a/a/a/a/j;->f:Lcom/google/a/a/a/a/n;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1285
    :cond_5
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 1183
    .line 2293
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 2294
    sparse-switch v0, :sswitch_data_0

    .line 2298
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/a/j;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2299
    :sswitch_0
    return-object p0

    .line 2304
    :sswitch_1
    iget-object v0, p0, Lcom/google/a/a/a/a/j;->a:Lcom/google/a/a/a/a/i;

    if-nez v0, :cond_1

    .line 2305
    new-instance v0, Lcom/google/a/a/a/a/i;

    invoke-direct {v0}, Lcom/google/a/a/a/a/i;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/a/j;->a:Lcom/google/a/a/a/a/i;

    .line 2307
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/a/j;->a:Lcom/google/a/a/a/a/i;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2311
    :sswitch_2
    iget-object v0, p0, Lcom/google/a/a/a/a/j;->b:Lcom/google/a/a/a/a/p;

    if-nez v0, :cond_2

    .line 2312
    new-instance v0, Lcom/google/a/a/a/a/p;

    invoke-direct {v0}, Lcom/google/a/a/a/a/p;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/a/j;->b:Lcom/google/a/a/a/a/p;

    .line 2314
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/a/j;->b:Lcom/google/a/a/a/a/p;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2318
    :sswitch_3
    iget-object v0, p0, Lcom/google/a/a/a/a/j;->c:Lcom/google/a/a/a/a/x;

    if-nez v0, :cond_3

    .line 2319
    new-instance v0, Lcom/google/a/a/a/a/x;

    invoke-direct {v0}, Lcom/google/a/a/a/a/x;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/a/j;->c:Lcom/google/a/a/a/a/x;

    .line 2321
    :cond_3
    iget-object v0, p0, Lcom/google/a/a/a/a/j;->c:Lcom/google/a/a/a/a/x;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2325
    :sswitch_4
    iget-object v0, p0, Lcom/google/a/a/a/a/j;->d:Lcom/google/a/a/a/a/D;

    if-nez v0, :cond_4

    .line 2326
    new-instance v0, Lcom/google/a/a/a/a/D;

    invoke-direct {v0}, Lcom/google/a/a/a/a/D;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/a/j;->d:Lcom/google/a/a/a/a/D;

    .line 2328
    :cond_4
    iget-object v0, p0, Lcom/google/a/a/a/a/j;->d:Lcom/google/a/a/a/a/D;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2332
    :sswitch_5
    iget-object v0, p0, Lcom/google/a/a/a/a/j;->e:Lcom/google/a/a/a/a/q;

    if-nez v0, :cond_5

    .line 2333
    new-instance v0, Lcom/google/a/a/a/a/q;

    invoke-direct {v0}, Lcom/google/a/a/a/a/q;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/a/j;->e:Lcom/google/a/a/a/a/q;

    .line 2335
    :cond_5
    iget-object v0, p0, Lcom/google/a/a/a/a/j;->e:Lcom/google/a/a/a/a/q;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2339
    :sswitch_6
    iget-object v0, p0, Lcom/google/a/a/a/a/j;->f:Lcom/google/a/a/a/a/n;

    if-nez v0, :cond_6

    .line 2340
    new-instance v0, Lcom/google/a/a/a/a/n;

    invoke-direct {v0}, Lcom/google/a/a/a/a/n;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/a/j;->f:Lcom/google/a/a/a/a/n;

    .line 2342
    :cond_6
    iget-object v0, p0, Lcom/google/a/a/a/a/j;->f:Lcom/google/a/a/a/a/n;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2294
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/google/a/a/a/a/j;->a:Lcom/google/a/a/a/a/i;

    if-eqz v0, :cond_0

    .line 1238
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/a/j;->a:Lcom/google/a/a/a/a/i;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1240
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/a/j;->b:Lcom/google/a/a/a/a/p;

    if-eqz v0, :cond_1

    .line 1241
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/a/j;->b:Lcom/google/a/a/a/a/p;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1243
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/a/j;->c:Lcom/google/a/a/a/a/x;

    if-eqz v0, :cond_2

    .line 1244
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/a/a/a/a/j;->c:Lcom/google/a/a/a/a/x;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1246
    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/a/j;->d:Lcom/google/a/a/a/a/D;

    if-eqz v0, :cond_3

    .line 1247
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/a/a/a/a/j;->d:Lcom/google/a/a/a/a/D;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1249
    :cond_3
    iget-object v0, p0, Lcom/google/a/a/a/a/j;->e:Lcom/google/a/a/a/a/q;

    if-eqz v0, :cond_4

    .line 1250
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/a/a/a/a/j;->e:Lcom/google/a/a/a/a/q;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1252
    :cond_4
    iget-object v0, p0, Lcom/google/a/a/a/a/j;->f:Lcom/google/a/a/a/a/n;

    if-eqz v0, :cond_5

    .line 1253
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/a/a/a/a/j;->f:Lcom/google/a/a/a/a/n;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1255
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1256
    return-void
.end method
