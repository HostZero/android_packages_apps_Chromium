.class Lorg/chromium/content/app/ChildProcessService$2;
.super Ljava/lang/Object;
.source "ChildProcessService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/content/app/ChildProcessService;


# direct methods
.method constructor <init>(Lorg/chromium/content/app/ChildProcessService;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 125
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    # getter for: Lorg/chromium/content/app/ChildProcessService;->mMainThread:Ljava/lang/Thread;
    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$100(Lorg/chromium/content/app/ChildProcessService;)Ljava/lang/Thread;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_1

    .line 126
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    # getter for: Lorg/chromium/content/app/ChildProcessService;->mCommandLineParams:[Ljava/lang/String;
    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$200(Lorg/chromium/content/app/ChildProcessService;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 127
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    # getter for: Lorg/chromium/content/app/ChildProcessService;->mMainThread:Ljava/lang/Thread;
    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$100(Lorg/chromium/content/app/ChildProcessService;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_2 .. :try_end_2} :catch_1

    .line 200
    :catch_0
    move-exception v0

    .line 201
    const-string/jumbo v1, "ChildProcessService"

    const-string/jumbo v2, "%s startup failed: %s"

    new-array v3, v11, [Ljava/lang/Object;

    const-string/jumbo v4, "ChildProcessMain"

    aput-object v4, v3, v7

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    :cond_0
    :goto_1
    return-void

    .line 129
    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    :try_start_4
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    # getter for: Lorg/chromium/content/app/ChildProcessService;->mCommandLineParams:[Ljava/lang/String;
    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$200(Lorg/chromium/content/app/ChildProcessService;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/CommandLine;->init([Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x0

    .line 134
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->isUsed()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 135
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    # getter for: Lorg/chromium/content/app/ChildProcessService;->mMainThread:Ljava/lang/Thread;
    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$100(Lorg/chromium/content/app/ChildProcessService;)Ljava/lang/Thread;

    move-result-object v1

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_4 .. :try_end_4} :catch_1

    .line 136
    :goto_2
    :try_start_5
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    # getter for: Lorg/chromium/content/app/ChildProcessService;->mIsBound:Z
    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$300(Lorg/chromium/content/app/ChildProcessService;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    # getter for: Lorg/chromium/content/app/ChildProcessService;->mMainThread:Ljava/lang/Thread;
    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$100(Lorg/chromium/content/app/ChildProcessService;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_2

    .line 139
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_6 .. :try_end_6} :catch_1

    .line 202
    :catch_1
    move-exception v0

    .line 203
    const-string/jumbo v1, "ChildProcessService"

    const-string/jumbo v2, "%s startup failed: %s"

    new-array v3, v11, [Ljava/lang/Object;

    const-string/jumbo v4, "ChildProcessMain"

    aput-object v4, v3, v7

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 139
    :cond_2
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 140
    :try_start_8
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    # invokes: Lorg/chromium/content/app/ChildProcessService;->getLinker()Lorg/chromium/base/library_loader/Linker;
    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$400(Lorg/chromium/content/app/ChildProcessService;)Lorg/chromium/base/library_loader/Linker;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    # getter for: Lorg/chromium/content/app/ChildProcessService;->mLinkerParams:Lorg/chromium/content/app/ChromiumLinkerParams;
    invoke-static {v1}, Lorg/chromium/content/app/ChildProcessService;->access$500(Lorg/chromium/content/app/ChildProcessService;)Lorg/chromium/content/app/ChromiumLinkerParams;

    move-result-object v1

    iget-boolean v1, v1, Lorg/chromium/content/app/ChromiumLinkerParams;->mWaitForSharedRelro:Z

    if-eqz v1, :cond_5

    .line 143
    iget-object v1, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    # getter for: Lorg/chromium/content/app/ChildProcessService;->mLinkerParams:Lorg/chromium/content/app/ChromiumLinkerParams;
    invoke-static {v1}, Lorg/chromium/content/app/ChildProcessService;->access$500(Lorg/chromium/content/app/ChildProcessService;)Lorg/chromium/content/app/ChromiumLinkerParams;

    move-result-object v1

    iget-wide v2, v1, Lorg/chromium/content/app/ChromiumLinkerParams;->mBaseLoadAddress:J

    invoke-virtual {v0, v2, v3}, Lorg/chromium/base/library_loader/Linker;->initServiceProcess(J)V

    move v3, v8

    move-object v4, v0

    .line 149
    :goto_3
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string/jumbo v1, "renderer-wait-for-java-debugger"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_8 .. :try_end_8} :catch_1

    .line 156
    :cond_3
    :try_start_9
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    # getter for: Lorg/chromium/content/app/ChildProcessService;->mLibraryProcessType:I
    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$600(Lorg/chromium/content/app/ChildProcessService;)I

    move-result v0

    invoke-static {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->get(I)Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-virtual {v1}, Lorg/chromium/content/app/ChildProcessService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/base/library_loader/LibraryLoader;->loadNow(Landroid/content/Context;)V
    :try_end_9
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0

    move v2, v7

    move v1, v8

    .line 167
    :goto_4
    if-nez v1, :cond_7

    if-eqz v3, :cond_7

    .line 168
    :try_start_a
    invoke-virtual {v4}, Lorg/chromium/base/library_loader/Linker;->disableSharedRelros()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_a .. :try_end_a} :catch_1

    .line 170
    :try_start_b
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    # getter for: Lorg/chromium/content/app/ChildProcessService;->mLibraryProcessType:I
    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$600(Lorg/chromium/content/app/ChildProcessService;)I

    move-result v0

    invoke-static {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->get(I)Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v0

    iget-object v4, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-virtual {v4}, Lorg/chromium/content/app/ChildProcessService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/chromium/base/library_loader/LibraryLoader;->loadNow(Landroid/content/Context;)V
    :try_end_b
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0

    move v0, v8

    .line 176
    :goto_5
    if-nez v0, :cond_4

    .line 177
    const/4 v0, -0x1

    :try_start_c
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 179
    :cond_4
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    # getter for: Lorg/chromium/content/app/ChildProcessService;->mLibraryProcessType:I
    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$600(Lorg/chromium/content/app/ChildProcessService;)I

    move-result v0

    invoke-static {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->get(I)Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lorg/chromium/base/library_loader/LibraryLoader;->registerRendererProcessHistogram(ZZ)V

    .line 182
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    # getter for: Lorg/chromium/content/app/ChildProcessService;->mLibraryProcessType:I
    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$600(Lorg/chromium/content/app/ChildProcessService;)I

    move-result v0

    invoke-static {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->get(I)Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->initialize()V

    .line 183
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    # getter for: Lorg/chromium/content/app/ChildProcessService;->mMainThread:Ljava/lang/Thread;
    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$100(Lorg/chromium/content/app/ChildProcessService;)Ljava/lang/Thread;

    move-result-object v1

    monitor-enter v1
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_c .. :try_end_c} :catch_1

    .line 184
    :try_start_d
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    const/4 v2, 0x1

    # setter for: Lorg/chromium/content/app/ChildProcessService;->mLibraryInitialized:Z
    invoke-static {v0, v2}, Lorg/chromium/content/app/ChildProcessService;->access$702(Lorg/chromium/content/app/ChildProcessService;Z)Z

    .line 185
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    # getter for: Lorg/chromium/content/app/ChildProcessService;->mMainThread:Ljava/lang/Thread;
    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$100(Lorg/chromium/content/app/ChildProcessService;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 186
    :goto_6
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    # getter for: Lorg/chromium/content/app/ChildProcessService;->mFdInfos:[Lorg/chromium/content/browser/FileDescriptorInfo;
    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$800(Lorg/chromium/content/app/ChildProcessService;)[Lorg/chromium/content/browser/FileDescriptorInfo;

    move-result-object v0

    if-nez v0, :cond_8

    .line 187
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    # getter for: Lorg/chromium/content/app/ChildProcessService;->mMainThread:Ljava/lang/Thread;
    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$100(Lorg/chromium/content/app/ChildProcessService;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_6

    .line 189
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw v0

    .line 145
    :cond_5
    invoke-virtual {v0}, Lorg/chromium/base/library_loader/Linker;->disableSharedRelros()V

    move v3, v7

    move-object v4, v0

    goto/16 :goto_3

    .line 158
    :catch_2
    move-exception v0

    .line 159
    if-eqz v3, :cond_6

    .line 160
    const-string/jumbo v0, "ChildProcessService"

    const-string/jumbo v1, "Failed to load native library with shared RELRO, retrying without"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v8

    move v1, v7

    .line 162
    goto :goto_4

    .line 164
    :cond_6
    const-string/jumbo v1, "ChildProcessService"

    const-string/jumbo v2, "Failed to load native library"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v1, v2, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v7

    move v1, v7

    goto/16 :goto_4

    .line 172
    :catch_3
    move-exception v0

    .line 173
    const-string/jumbo v4, "ChildProcessService"

    const-string/jumbo v5, "Failed to load native library on retry"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v6, v9

    invoke-static {v4, v5, v6}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_e .. :try_end_e} :catch_1

    :cond_7
    move v0, v1

    goto/16 :goto_5

    .line 189
    :cond_8
    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 190
    :try_start_10
    # getter for: Lorg/chromium/content/app/ChildProcessService;->sContext:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {}, Lorg/chromium/content/app/ChildProcessService;->access$900()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/ContextUtils;->initApplicationContext(Landroid/content/Context;)V

    .line 191
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    # getter for: Lorg/chromium/content/app/ChildProcessService;->mFdInfos:[Lorg/chromium/content/browser/FileDescriptorInfo;
    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$800(Lorg/chromium/content/app/ChildProcessService;)[Lorg/chromium/content/browser/FileDescriptorInfo;

    move-result-object v9

    array-length v10, v9

    move v6, v7

    :goto_7
    if-ge v6, v10, :cond_9

    aget-object v4, v9, v6

    .line 192
    iget v0, v4, Lorg/chromium/content/browser/FileDescriptorInfo;->mId:I

    iget-object v1, v4, Lorg/chromium/content/browser/FileDescriptorInfo;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v1

    iget-wide v2, v4, Lorg/chromium/content/browser/FileDescriptorInfo;->mOffset:J

    iget-wide v4, v4, Lorg/chromium/content/browser/FileDescriptorInfo;->mSize:J

    # invokes: Lorg/chromium/content/app/ChildProcessService;->nativeRegisterGlobalFileDescriptor(IIJJ)V
    invoke-static/range {v0 .. v5}, Lorg/chromium/content/app/ChildProcessService;->access$1000(IIJJ)V

    .line 191
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_7

    .line 195
    :cond_9
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    iget-object v1, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    # getter for: Lorg/chromium/content/app/ChildProcessService;->mCpuCount:I
    invoke-static {v1}, Lorg/chromium/content/app/ChildProcessService;->access$1100(Lorg/chromium/content/app/ChildProcessService;)I

    move-result v1

    iget-object v2, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    # getter for: Lorg/chromium/content/app/ChildProcessService;->mCpuFeatures:J
    invoke-static {v2}, Lorg/chromium/content/app/ChildProcessService;->access$1200(Lorg/chromium/content/app/ChildProcessService;)J

    move-result-wide v2

    # invokes: Lorg/chromium/content/app/ChildProcessService;->nativeInitChildProcess(Lorg/chromium/content/app/ChildProcessService;IJ)V
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/content/app/ChildProcessService;->access$1300(Lorg/chromium/content/app/ChildProcessService;IJ)V

    .line 196
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    # getter for: Lorg/chromium/content/app/ChildProcessService;->mActivitySemaphore:Ljava/util/concurrent/Semaphore;
    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$1400(Lorg/chromium/content/app/ChildProcessService;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-static {}, Lorg/chromium/content/app/ContentMain;->start()I

    .line 198
    # invokes: Lorg/chromium/content/app/ChildProcessService;->nativeExitChildProcess()V
    invoke-static {}, Lorg/chromium/content/app/ChildProcessService;->access$1500()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_10 .. :try_end_10} :catch_1

    goto/16 :goto_1

    :cond_a
    move v3, v7

    move-object v4, v0

    goto/16 :goto_3
.end method
