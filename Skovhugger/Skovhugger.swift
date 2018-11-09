//
//  Skovhugger.swift
//  Skovhugger
//
//  Created by Oliver Stowell on 06/11/2018.
//  Copyright © 2018 Oliver Stowell. All rights reserved.
//

import Foundation
import os

/// `Skovhugger` is lumberjack in Danish. Original I know.
//MARK: - Base
public class Skovhugger {
    /// Blocked access
    private init() {}
    
    private class func log(sub : String?,
                           cat : String?,
                           type: OSLogType,
                           message: String) {
        let log : OSLog = OSLog(subsystem: Skovhugger.subsystemString(sub: sub),
                                category: cat ?? "Default")
        
        os_log(type,
               log: log,
               "%@", message)
    }
    
    private class func subsystemString(sub : String?) -> String {
        let id = Bundle.main.bundleIdentifier
        var subsystem : String = "\(id ?? "com.skovhugger")"
        if let sub = sub {
            subsystem.append(".\(sub)")
        }
        return subsystem
    }
}

//MARK: - Debug log type
public extension Skovhugger {
    public class func logDebug(message : String) {
        Skovhugger.log(sub: nil,
                       cat: nil,
                       type: .debug,
                       message: message)
    }
    
    public class func logDebug(subsystem : String,
                               category : String,
                               message : String) {
        Skovhugger.log(sub: subsystem,
                       cat: category,
                       type: .debug,
                       message: message)
    }
}

//MARK: - Info log type
public extension Skovhugger {
    public class func logInfo(message : String) {
        Skovhugger.log(sub: nil,
                       cat: nil,
                       type: .info,
                       message: message)
    }
    
    public class func logInfo(subsystem : String,
                              category : String,
                              message : String) {
        Skovhugger.log(sub: subsystem,
                       cat: category,
                       type: .info,
                       message: message)
    }
}

//MARK: - Error log type
public extension Skovhugger {
    public class func logError(message : String) {
        Skovhugger.log(sub: nil,
                       cat: nil,
                       type: .error,
                       message: message)
    }
    
    public class func logError(subsystem : String,
                               category : String,
                               message : String) {
        Skovhugger.log(sub: subsystem,
                       cat: category,
                       type: .error,
                       message: message)
    }
}

//MARK: - Default log type
public extension Skovhugger {
    public class func logDefault(message : String) {
        Skovhugger.log(sub: nil,
                       cat: nil,
                       type: .default,
                       message: message)
    }
    
    public class func logDefault(subsystem : String,
                                 category : String,
                                 message : String) {
        Skovhugger.log(sub: subsystem,
                       cat: category,
                       type: .default,
                       message: message)
    }
}

//MARK: - Fault log type
public extension Skovhugger {
    /**
     Logs a fault type log to the debug console & the logs.
     - Parameter message: the output to the console.
     */
    public class func logFault(message : String) {
        Skovhugger.log(sub: nil,
                       cat: nil,
                       type: .fault,
                       message: message)
    }
    
    /**
     Logs a fault type log to the debug console & the logs.
     - Parameters:
        - subsystem: An identifier string, in reverse DNS notation, representing the subsystem that’s performing logging. For example, com.your_company.your_subsystem_name. The subsystem is used for categorization and filtering of related log messages, as well as for grouping related logging settings.
        - category: A category within the specified subsystem. The category is used for categorization and filtering of related log messages, as well as for grouping related logging settings within the subsystem’s settings. A category’s logging settings override those of the parent subsystem.
        - message: the output to the console.
     */
    public class func logFault(subsystem : String,
                               category : String,
                               message : String) {
        Skovhugger.log(sub: subsystem,
                       cat: category,
                       type: .fault,
                       message: message)
    }
}
