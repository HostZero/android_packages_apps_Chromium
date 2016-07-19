.class public final Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;
.super Lorg/chromium/mojo/bindings/Union;
.source "RunOrClosePipeInput.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAssociatedEndpointClosedBeforeSentEvent:Lorg/chromium/mojo/bindings/pipecontrol/AssociatedEndpointClosedBeforeSentEvent;

.field private mPeerAssociatedEndpointClosedEvent:Lorg/chromium/mojo/bindings/pipecontrol/PeerAssociatedEndpointClosedEvent;

.field private mTag_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Union;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mTag_:I

    return-void
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    const/16 v0, 0x10

    invoke-virtual {p1, v0, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 81
    iget v0, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mTag_:I

    add-int/lit8 v1, p2, 0x4

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 82
    iget v0, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mTag_:I

    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_0
    return-void

    .line 88
    :pswitch_0
    iget-object v0, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mPeerAssociatedEndpointClosedEvent:Lorg/chromium/mojo/bindings/pipecontrol/PeerAssociatedEndpointClosedEvent;

    add-int/lit8 v1, p2, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_0

    .line 98
    :pswitch_1
    iget-object v0, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mAssociatedEndpointClosedBeforeSentEvent:Lorg/chromium/mojo/bindings/pipecontrol/AssociatedEndpointClosedBeforeSentEvent;

    add-int/lit8 v1, p2, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 162
    if-ne p1, p0, :cond_1

    .line 163
    const/4 v0, 0x1

    .line 182
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 168
    check-cast p1, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;

    .line 169
    iget v1, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mTag_:I

    iget v2, p1, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mTag_:I

    if-ne v1, v2, :cond_0

    .line 171
    iget v1, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mTag_:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 174
    :pswitch_0
    iget-object v0, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mPeerAssociatedEndpointClosedEvent:Lorg/chromium/mojo/bindings/pipecontrol/PeerAssociatedEndpointClosedEvent;

    iget-object v1, p1, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mPeerAssociatedEndpointClosedEvent:Lorg/chromium/mojo/bindings/pipecontrol/PeerAssociatedEndpointClosedEvent;

    invoke-static {v0, v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 177
    :pswitch_1
    iget-object v0, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mAssociatedEndpointClosedBeforeSentEvent:Lorg/chromium/mojo/bindings/pipecontrol/AssociatedEndpointClosedBeforeSentEvent;

    iget-object v1, p1, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mAssociatedEndpointClosedBeforeSentEvent:Lorg/chromium/mojo/bindings/pipecontrol/AssociatedEndpointClosedBeforeSentEvent;

    invoke-static {v0, v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 192
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mTag_:I

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 193
    iget v1, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mTag_:I

    packed-switch v1, :pswitch_data_0

    .line 209
    :goto_0
    return v0

    .line 196
    :pswitch_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mPeerAssociatedEndpointClosedEvent:Lorg/chromium/mojo/bindings/pipecontrol/PeerAssociatedEndpointClosedEvent;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 197
    goto :goto_0

    .line 201
    :pswitch_1
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;->mAssociatedEndpointClosedBeforeSentEvent:Lorg/chromium/mojo/bindings/pipecontrol/AssociatedEndpointClosedBeforeSentEvent;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
