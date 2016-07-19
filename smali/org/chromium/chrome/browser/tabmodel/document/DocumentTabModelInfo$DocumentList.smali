.class public final Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentList;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DocumentTabModelInfo.java"


# instance fields
.field public entries:[Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 140
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentList;->clear()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentList;

    .line 141
    return-void
.end method


# virtual methods
.method public final clear()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentList;
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;->emptyArray()[Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentList;->entries:[Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentList;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 146
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentList;->cachedSize:I

    .line 147
    return-object p0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    .line 166
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v1

    .line 167
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentList;->entries:[Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentList;->entries:[Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 168
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentList;->entries:[Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 169
    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentList;->entries:[Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;

    aget-object v2, v2, v0

    .line 170
    if-eqz v2, :cond_0

    .line 171
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 168
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_1
    return v1
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentList;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentList;

    move-result-object v0

    return-object v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentList;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 184
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    move-result v0

    .line 185
    sparse-switch v0, :sswitch_data_0

    .line 189
    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentList;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    :sswitch_0
    return-object p0

    .line 195
    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->b(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 197
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentList;->entries:[Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;

    if-nez v0, :cond_2

    move v0, v1

    .line 198
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;

    .line 200
    if-eqz v0, :cond_1

    .line 201
    iget-object v3, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentList;->entries:[Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 204
    new-instance v3, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;

    invoke-direct {v3}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;-><init>()V

    aput-object v3, v2, v0

    .line 205
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 206
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a()I

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 197
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentList;->entries:[Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;

    array-length v0, v0

    goto :goto_1

    .line 209
    :cond_3
    new-instance v3, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;

    invoke-direct {v3}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;-><init>()V

    aput-object v3, v2, v0

    .line 210
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->a(Lcom/google/protobuf/nano/MessageNano;)V

    .line 211
    iput-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentList;->entries:[Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;

    goto :goto_0

    .line 185
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentList;->entries:[Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentList;->entries:[Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 154
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentList;->entries:[Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 155
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentList;->entries:[Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;

    aget-object v1, v1, v0

    .line 156
    if-eqz v1, :cond_0

    .line 157
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/MessageNano;)V

    .line 154
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 162
    return-void
.end method
