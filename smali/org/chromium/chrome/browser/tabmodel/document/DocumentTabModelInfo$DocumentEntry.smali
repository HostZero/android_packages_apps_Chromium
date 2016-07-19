.class public final Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DocumentTabModelInfo.java"


# static fields
.field private static volatile _emptyArray:[Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;


# instance fields
.field public canGoBack:Ljava/lang/Boolean;

.field public isCoveredByChildActivity:Ljava/lang/Boolean;

.field public tabId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 35
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;->clear()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;

    .line 36
    return-void
.end method

.method public static emptyArray()[Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;->_emptyArray:[Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;->_emptyArray:[Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;

    sput-object v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;->_emptyArray:[Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;->_emptyArray:[Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final clear()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;->canGoBack:Ljava/lang/Boolean;

    .line 40
    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;->tabId:Ljava/lang/Integer;

    .line 41
    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;->isCoveredByChildActivity:Ljava/lang/Boolean;

    .line 42
    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;->cachedSize:I

    .line 44
    return-object p0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 62
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 63
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;->canGoBack:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 64
    const/4 v1, 0x4

    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;->canGoBack:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    :cond_0
    const/4 v1, 0x5

    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;->tabId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 69
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;->isCoveredByChildActivity:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 70
    const/4 v1, 0x6

    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;->isCoveredByChildActivity:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    :cond_1
    return v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;

    move-result-object v0

    return-object v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;
    .locals 1

    .prologue
    .line 81
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 82
    sparse-switch v0, :sswitch_data_0

    .line 86
    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    :sswitch_0
    return-object p0

    .line 92
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;->canGoBack:Ljava/lang/Boolean;

    goto :goto_0

    .line 96
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;->tabId:Ljava/lang/Integer;

    goto :goto_0

    .line 100
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;->isCoveredByChildActivity:Ljava/lang/Boolean;

    goto :goto_0

    .line 82
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x20 -> :sswitch_1
        0x28 -> :sswitch_2
        0x30 -> :sswitch_3
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;->canGoBack:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x4

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;->canGoBack:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IZ)V

    .line 53
    :cond_0
    const/4 v0, 0x5

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;->tabId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    .line 54
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;->isCoveredByChildActivity:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 55
    const/4 v0, 0x6

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;->isCoveredByChildActivity:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IZ)V

    .line 57
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 58
    return-void
.end method
