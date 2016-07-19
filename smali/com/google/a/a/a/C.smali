.class public final Lcom/google/a/a/a/C;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NanoAndroidService.java"


# static fields
.field private static volatile c:[Lcom/google/a/a/a/C;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1978
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2983
    iput-object v0, p0, Lcom/google/a/a/a/C;->a:Ljava/lang/String;

    .line 2984
    iput-object v0, p0, Lcom/google/a/a/a/C;->b:Ljava/lang/Long;

    .line 2985
    iput-object v0, p0, Lcom/google/a/a/a/C;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 2986
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/C;->cachedSize:I

    .line 1980
    return-void
.end method

.method public static a()[Lcom/google/a/a/a/C;
    .locals 2

    .prologue
    .line 1961
    sget-object v0, Lcom/google/a/a/a/C;->c:[Lcom/google/a/a/a/C;

    if-nez v0, :cond_1

    .line 1962
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1964
    :try_start_0
    sget-object v0, Lcom/google/a/a/a/C;->c:[Lcom/google/a/a/a/C;

    if-nez v0, :cond_0

    .line 1965
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/a/a/a/C;

    sput-object v0, Lcom/google/a/a/a/C;->c:[Lcom/google/a/a/a/C;

    .line 1967
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1969
    :cond_1
    sget-object v0, Lcom/google/a/a/a/C;->c:[Lcom/google/a/a/a/C;

    return-object v0

    .line 1967
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    .line 2004
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2005
    iget-object v1, p0, Lcom/google/a/a/a/C;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2006
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/C;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2009
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/C;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 2010
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/C;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2013
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 2

    .prologue
    .line 1955
    .line 3021
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 3022
    sparse-switch v0, :sswitch_data_0

    .line 3026
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/C;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3027
    :sswitch_0
    return-object p0

    .line 3032
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/C;->a:Ljava/lang/String;

    goto :goto_0

    .line 3036
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/C;->b:Ljava/lang/Long;

    goto :goto_0

    .line 3022
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    .line 1993
    iget-object v0, p0, Lcom/google/a/a/a/C;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1994
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/C;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    .line 1996
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/C;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 1997
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/C;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IJ)V

    .line 1999
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2000
    return-void
.end method
