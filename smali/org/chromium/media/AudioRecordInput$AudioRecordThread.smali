.class Lorg/chromium/media/AudioRecordInput$AudioRecordThread;
.super Ljava/lang/Thread;
.source "AudioRecordInput.java"


# instance fields
.field private volatile mKeepAlive:Z

.field final synthetic this$0:Lorg/chromium/media/AudioRecordInput;


# direct methods
.method private constructor <init>(Lorg/chromium/media/AudioRecordInput;)V
    .locals 1

    .prologue
    .line 45
    iput-object p1, p0, Lorg/chromium/media/AudioRecordInput$AudioRecordThread;->this$0:Lorg/chromium/media/AudioRecordInput;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/media/AudioRecordInput$AudioRecordThread;->mKeepAlive:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/media/AudioRecordInput;Lorg/chromium/media/AudioRecordInput$1;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/chromium/media/AudioRecordInput$AudioRecordThread;-><init>(Lorg/chromium/media/AudioRecordInput;)V

    return-void
.end method


# virtual methods
.method public joinRecordThread()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/media/AudioRecordInput$AudioRecordThread;->mKeepAlive:Z

    .line 86
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/media/AudioRecordInput$AudioRecordThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/media/AudioRecordInput$AudioRecordThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 54
    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 56
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/AudioRecordInput$AudioRecordThread;->this$0:Lorg/chromium/media/AudioRecordInput;

    # getter for: Lorg/chromium/media/AudioRecordInput;->mAudioRecord:Landroid/media/AudioRecord;
    invoke-static {v0}, Lorg/chromium/media/AudioRecordInput;->access$000(Lorg/chromium/media/AudioRecordInput;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lorg/chromium/media/AudioRecordInput$AudioRecordThread;->mKeepAlive:Z

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lorg/chromium/media/AudioRecordInput$AudioRecordThread;->this$0:Lorg/chromium/media/AudioRecordInput;

    # getter for: Lorg/chromium/media/AudioRecordInput;->mAudioRecord:Landroid/media/AudioRecord;
    invoke-static {v0}, Lorg/chromium/media/AudioRecordInput;->access$000(Lorg/chromium/media/AudioRecordInput;)Landroid/media/AudioRecord;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/media/AudioRecordInput$AudioRecordThread;->this$0:Lorg/chromium/media/AudioRecordInput;

    # getter for: Lorg/chromium/media/AudioRecordInput;->mBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v1}, Lorg/chromium/media/AudioRecordInput;->access$100(Lorg/chromium/media/AudioRecordInput;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/media/AudioRecordInput$AudioRecordThread;->this$0:Lorg/chromium/media/AudioRecordInput;

    # getter for: Lorg/chromium/media/AudioRecordInput;->mBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v2}, Lorg/chromium/media/AudioRecordInput;->access$100(Lorg/chromium/media/AudioRecordInput;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 64
    if-lez v0, :cond_1

    .line 65
    iget-object v1, p0, Lorg/chromium/media/AudioRecordInput$AudioRecordThread;->this$0:Lorg/chromium/media/AudioRecordInput;

    iget-object v2, p0, Lorg/chromium/media/AudioRecordInput$AudioRecordThread;->this$0:Lorg/chromium/media/AudioRecordInput;

    # getter for: Lorg/chromium/media/AudioRecordInput;->mNativeAudioRecordInputStream:J
    invoke-static {v2}, Lorg/chromium/media/AudioRecordInput;->access$200(Lorg/chromium/media/AudioRecordInput;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/chromium/media/AudioRecordInput$AudioRecordThread;->this$0:Lorg/chromium/media/AudioRecordInput;

    # getter for: Lorg/chromium/media/AudioRecordInput;->mHardwareDelayBytes:I
    invoke-static {v4}, Lorg/chromium/media/AudioRecordInput;->access$300(Lorg/chromium/media/AudioRecordInput;)I

    move-result v4

    # invokes: Lorg/chromium/media/AudioRecordInput;->nativeOnData(JII)V
    invoke-static {v1, v2, v3, v0, v4}, Lorg/chromium/media/AudioRecordInput;->access$400(Lorg/chromium/media/AudioRecordInput;JII)V

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    const-string/jumbo v1, "cr.media"

    const-string/jumbo v2, "startRecording failed"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :goto_1
    return-void

    .line 68
    :cond_1
    const-string/jumbo v1, "cr.media"

    const-string/jumbo v2, "read failed: %d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    .line 72
    iput-boolean v5, p0, Lorg/chromium/media/AudioRecordInput$AudioRecordThread;->mKeepAlive:Z

    goto :goto_0

    .line 78
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/chromium/media/AudioRecordInput$AudioRecordThread;->this$0:Lorg/chromium/media/AudioRecordInput;

    # getter for: Lorg/chromium/media/AudioRecordInput;->mAudioRecord:Landroid/media/AudioRecord;
    invoke-static {v0}, Lorg/chromium/media/AudioRecordInput;->access$000(Lorg/chromium/media/AudioRecordInput;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 79
    :catch_1
    move-exception v0

    .line 80
    const-string/jumbo v1, "cr.media"

    const-string/jumbo v2, "stop failed"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
