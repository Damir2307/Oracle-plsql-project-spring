package com.example.demo.controller;

import com.example.demo.enitity.Playground;
import com.example.demo.service.api.PlaygroundService;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/v1/api/playground")
@AllArgsConstructor
public class PlaygroundController {
    private final PlaygroundService playgroundService;

    @PostMapping("/create")
    public ResponseEntity<Void> create(@RequestBody Playground playground){
        playgroundService.save(playground);
        return ResponseEntity.ok().build();
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deletePlayground(@PathVariable("id") Long id){
        playgroundService.delete(id);
        return ResponseEntity.ok().build();

    }


}
